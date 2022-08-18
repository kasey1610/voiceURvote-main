//
//  RegisterNowViewController.swift
//  voiceURvote
//
//  Created by Kasey Sexton on 8/17/22.
//

import UIKit
import WebKit

class RegisterNowViewController: UIViewController, WKNavigationDelegate {

    var webView :  WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1  The webView loads the url using an URLRequest object.
        let url = URL(string: "https://register.vote.org/")!
    
        webView.load(URLRequest(url: url))
        
        // 2  A refresh item is added to the toolbar which will refresh the current webpage.
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    }

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }

}


//class RegisterNowViewController: UIViewController, WKUIDelegate {
//
//    
//    
//    var webView: WKWebView
//
//    override func loadView() {
//        let webConfiguration = WKWebViewConfiguration()
//        webView = WKWebView(frame: .zero, configuration: webConfiguration)
//        webView.uiDelegate = self
//        view = webView
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let myURL = URL(string: "https://register.vote.org/")
//        let myRequest = URLRequest(url: myURL!)
//       webView.load(myRequest)
//
//
//
//    }
//
//
//
//}
