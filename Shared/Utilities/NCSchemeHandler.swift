import WebKit


final class NCSchemeHandler: NSObject {
    
    private let perform: (String, String, String) -> Void /// Arguments: server, username & password
    
    init(perform: @escaping (String, String, String) -> Void) {
        self.perform = perform
    }
    
}


extension NCSchemeHandler {
    
    enum NCSchemeHandlerError: Error {
        case credentialsParseError
    }
    
}


extension NCSchemeHandler: WKURLSchemeHandler {
    
    /// Grab credentials when navigating to an NC url
    func webView(_ webView: WKWebView, start urlSchemeTask: WKURLSchemeTask) {
        guard let url = urlSchemeTask.request.url,
              let urlString = urlSchemeTask.request.url?.absoluteString,
              let regex = try? NSRegularExpression(pattern: "^nc://login/server:([^&]+)&user:([^&]+)&password:(.+)$", options: .caseInsensitive),
              let match = regex.firstMatch(in: urlString, range: NSRange(urlString.startIndex..., in: urlString)),
              match.numberOfRanges - 1 == 3 else {
            urlSchemeTask.didFailWithError(NCSchemeHandlerError.credentialsParseError)
            return
        }
        
        let encodedServer = String(urlString[Range(match.range(at: 1), in: urlString)!])
        let encodedUser = String(urlString[Range(match.range(at: 2), in: urlString)!])
        let encodedPassword = String(urlString[Range(match.range(at: 3), in: urlString)!])
        guard let server = encodedServer.replacingOccurrences(of: "+", with: " ").removingPercentEncoding,
              let user = encodedUser.replacingOccurrences(of: "+", with: " ").removingPercentEncoding,
              let password = encodedPassword.replacingOccurrences(of: "+", with: " ").removingPercentEncoding else {
            urlSchemeTask.didFailWithError(NCSchemeHandlerError.credentialsParseError)
            return
        }
        perform(server, user, password)
        
        urlSchemeTask.didReceive(URLResponse(url: url, mimeType: "text/html", expectedContentLength: -1, textEncodingName: nil))
        urlSchemeTask.didReceive("".data(using: .utf8)!)
        urlSchemeTask.didFinish()
    }
    
    func webView(_ webView: WKWebView, stop urlSchemeTask: WKURLSchemeTask) {}
    
}
