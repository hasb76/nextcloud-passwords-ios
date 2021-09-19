import SwiftUI


struct EditFolderPage: View {
    
    @Environment(\.presentationMode) private var presentationMode
    @EnvironmentObject private var autoFillController: AutoFillController
    @EnvironmentObject private var biometricAuthenticationController: BiometricAuthenticationController
    @EnvironmentObject private var sessionController: SessionController
    @EnvironmentObject private var tipController: TipController
    
    @StateObject private var editFolderController: EditFolderController
    @State private var showSelectFolderView = false
    
    init(folder: Folder, folders: [Folder], addFolder: @escaping () -> Void, updateFolder: @escaping () -> Void) {
        _editFolderController = StateObject(wrappedValue: EditFolderController(folder: folder, folders: folders, addFolder: addFolder, updateFolder: updateFolder))
    }
    
    // MARK: Views
    
    var body: some View {
        listView()
            .navigationTitle("_folder")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    cancelButton()
                }
                ToolbarItem(placement: .confirmationAction) {
                    confirmButton()
                }
            }
            .onChange(of: sessionController.state) {
                state in
                if state.isChallengeAvailable {
                    presentationMode.wrappedValue.dismiss()
                }
            }
    }
    
    private func listView() -> some View {
        List {
            folderLabelField()
            if editFolderController.folder.id.isEmpty {
                favoriteButton()
            }
            moveSection()
        }
        .listStyle(InsetGroupedListStyle())
    }
    
    private func folderLabelField() -> some View {
        Section(header: Text("_name")) {
            TextField("-", text: $editFolderController.folderLabel, onCommit: {
                applyAndDismiss()
            })
        }
    }
    
    private func moveSection() -> some View {
        Section(header: Text("_folder")) {
            Button {
                showSelectFolderView = true
            }
            label: {
                Label(editFolderController.folders.first(where: { $0.id == editFolderController.folderParent })?.label ?? "_passwords".localized, systemImage: "folder")
            }
            .sheet(isPresented: $showSelectFolderView) {
                SelectFolderNavigation(entry: .folder(editFolderController.folder), temporaryEntry: .folder(label: editFolderController.folderLabel, parent: editFolderController.folderParent), folders: editFolderController.folders, selectFolder: {
                    parent in
                    editFolderController.folderParent = parent.id
                })
                .environmentObject(autoFillController)
                .environmentObject(biometricAuthenticationController)
                .environmentObject(sessionController)
                .environmentObject(tipController)
            }
        }
    }
    
    private func favoriteButton() -> some View {
        Button {
            editFolderController.folderFavorite.toggle()
        }
        label: {
            Label("_favorite", systemImage: editFolderController.folderFavorite ? "star.fill" : "star")
        }
    }
    
    private func cancelButton() -> some View {
        Button("_cancel") {
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    private func confirmButton() -> some View {
        Button(editFolderController.folder.id.isEmpty ? "_create" : "_done") {
            applyAndDismiss()
        }
        .disabled(editFolderController.folderLabel.isEmpty)
    }
    
    // MARK: Functions
    
    private func applyAndDismiss() {
        if !editFolderController.folderLabel.isEmpty {
            guard editFolderController.folder.state?.isProcessing != true else {
                return
            }
            editFolderController.applyToFolder()
            presentationMode.wrappedValue.dismiss()
        }
    }
    
}


struct EditFolderPagePreview: PreviewProvider {
    
    static var previews: some View {
        PreviewDevice.generate {
            NavigationView {
                EditFolderPage(folder: Folder.mocks.first!, folders: Folder.mocks, addFolder: {}, updateFolder: {})
            }
            .showColumns(false)
        }
    }
    
}
