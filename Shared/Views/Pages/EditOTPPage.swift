import SwiftUI


struct EditOTPPage: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @StateObject private var editOtpController: EditOTPController
    @FocusState private var focusedField: FocusField?
    @State private var showMore: Bool
    @State private var showDeleteAlert = false
    @State private var showCancelAlert = false
    
    init(otp: OTP, updateOtp: @escaping (OTP?) -> Void) {
        _editOtpController = StateObject(wrappedValue: EditOTPController(otp: otp, updateOtp: updateOtp))
        _showMore = State(initialValue: otp.type != OTP.Defaults.type || otp.algorithm != OTP.Defaults.algorithm || otp.digits != OTP.Defaults.digits || otp.type == .totp && otp.period != OTP.Defaults.period)
    }
    
    // MARK: Views
    
    var body: some View {
        listView()
            .navigationTitle("_otp")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    cancelButton()
                }
                ToolbarItem(placement: .confirmationAction) {
                    confirmButton()
                }
            }
            .initialize(focus: $focusedField, with: editOtpController.otp.secret.isEmpty ? .otpSecret : nil)
            .interactiveDismissDisabled(editOtpController.hasChanges)
    }
    
    private func listView() -> some View {
        List {
            otpSecretField()
            moreSection()
            if !editOtpController.otp.secret.isEmpty {
                exportButton()
                deleteButton()
            }
        }
        .listStyle(.insetGrouped)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Button {
                    focusedField = focusedField?.previous()
                }
                label: {
                    Image(systemName: "chevron.up")
                }
                .disabled(focusedField?.previous() == nil)
                Button {
                    focusedField = focusedField?.next(showMore: showMore, isTimeBased: editOtpController.otpType == .totp)
                }
                label: {
                    Image(systemName: "chevron.down")
                }
                .disabled(focusedField?.next(showMore: showMore, isTimeBased: editOtpController.otpType == .totp) == nil)
                Spacer()
                Button {
                    focusedField = nil
                }
                label: {
                    Text("_dismiss")
                        .bold()
                }
            }
        }
        .onSubmit {
            if let next = focusedField?.next(showMore: showMore, isTimeBased: editOtpController.otpType == .totp) {
                focusedField = next
            }
            else {
                applyAndDismiss()
            }
        }
    }
    
    private func otpSecretField() -> some View {
        Section(header: Text("_secret")) {
            EditLabeledRow(type: .secret, value: $editOtpController.otpSecret)
                .focused($focusedField, equals: .otpSecret)
                .submitLabel(showMore ? .next : .done)
        }
    }
    
    private func moreSection() -> some View {
        Section {
            DisclosureGroup("_moreOptions", isExpanded: $showMore) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("_type")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Picker("", selection: $editOtpController.otpType) {
                        ForEach(OTP.OTPType.allCases.reversed()) {
                            type in
                            switch type {
                            case .totp:
                                Text("_timeBased")
                                    .tag(type)
                            case .hotp:
                                Text("_counterBased")
                                    .tag(type)
                            }
                        }
                    }
                    .pickerStyle(.segmented)
                }
                VStack(alignment: .leading, spacing: 6) {
                    Text("_algorithm")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Picker("", selection: $editOtpController.otpAlgorithm) {
                        ForEach(Crypto.OTP.Algorithm.allCases) {
                            algorithm in
                            switch algorithm {
                            case .sha1:
                                Text("SHA-1")
                                    .tag(algorithm)
                            case .sha256:
                                Text("SHA-256")
                                    .tag(algorithm)
                            case .sha512:
                                Text("SHA-512")
                                    .tag(algorithm)
                            }
                        }
                    }
                    .pickerStyle(.segmented)
                }
                EditLabeledRow(label: "_digits", value: $editOtpController.otpDigits, bounds: 6...8)
                    .focused($focusedField, equals: .otpDigits)
                    .submitLabel(.next)
                if editOtpController.otpType == .hotp {
                    EditLabeledRow(label: "_counter", value: $editOtpController.otpCounter, bounds: 0...Int.max)
                        .focused($focusedField, equals: .otpCounter)
                        .submitLabel(.done)
                }
                else if editOtpController.otpType == .totp {
                    EditLabeledRow(label: "_periodSeconds", value: $editOtpController.otpPeriod, bounds: 1...Int.max)
                        .focused($focusedField, equals: .otpPeriod)
                        .submitLabel(.done)
                }
            }
        }
    }
    
    private func exportButton() -> some View {
        Section {
            let data = OTP(type: editOtpController.otpType, algorithm: editOtpController.otpAlgorithm, secret: editOtpController.otpSecret, digits: editOtpController.otpDigits, counter: editOtpController.otpCounter, period: editOtpController.otpPeriod, issuer: editOtpController.otp.issuer, accountname: editOtpController.otp.accountname)?.url?.absoluteString.data(using: .utf8)
            NavigationLink {
                if let data {
                    ShareOTPPage(data: data)
                }
            }
            label: {
                Label("_exportAsQrCode", systemImage: "square.and.arrow.up")
                    .foregroundColor(.accentColor)
            }
            .isDetailLink(false)
            .disabled(!editOtpController.editIsValid || data == nil)
        }
    }
    
    private func deleteButton() -> some View {
        Button(role: .destructive) {
            showDeleteAlert = true
        }
        label: {
            HStack {
                Spacer()
                Text("_deleteOtp")
                Spacer()
            }
        }
        .actionSheet(isPresented: $showDeleteAlert) {
            ActionSheet(title: Text("_confirmAction"), buttons: [.cancel(), .destructive(Text("_deleteOtp")) {
                deleteAndDismiss()
            }])
        }
    }
    
    private func cancelButton() -> some View {
        Button("_cancel", role: .cancel) {
            cancelAndDismiss()
        }
        .actionSheet(isPresented: $showCancelAlert) {
            ActionSheet(title: Text("_confirmAction"), buttons: [.cancel(), .destructive(Text("_discardChanges")) {
                dismiss()
            }])
        }
    }
    
    private func confirmButton() -> some View {
        Button("_done") {
            applyAndDismiss()
        }
        .disabled(!editOtpController.editIsValid)
    }
    
    // MARK: Functions
    
    private func cancelAndDismiss() {
        if editOtpController.hasChanges {
            showCancelAlert = true
        }
        else {
            dismiss()
        }
    }
    
    private func applyAndDismiss() {
        guard editOtpController.editIsValid else {
            return
        }
        editOtpController.applyToOtp()
        dismiss()
    }
    
    private func deleteAndDismiss() {
        editOtpController.clearOtp()
        dismiss()
    }
    
}


extension EditOTPPage {
    
    private enum FocusField: Hashable {
        
        case otpSecret
        case otpDigits
        case otpCounter
        case otpPeriod
        
        func previous() -> Self? {
            switch self {
            case .otpSecret:
                return nil
            case .otpDigits:
                return .otpSecret
            case .otpCounter, .otpPeriod:
                return .otpDigits
            }
        }
        
        func next(showMore: Bool, isTimeBased: Bool) -> Self? {
            switch self {
            case .otpSecret:
                return showMore ? .otpDigits : nil
            case .otpDigits:
                return isTimeBased ? .otpPeriod : .otpCounter
            case .otpCounter, .otpPeriod:
                return nil
            }
        }
        
    }
    
}


struct EditOTPPagePreview: PreviewProvider {
    
    static var previews: some View {
        PreviewDevice.generate {
            NavigationView {
                EditOTPPage(otp: OTP.mock, updateOtp: { _ in })
            }
            .showColumns(false)
        }
    }
    
}
