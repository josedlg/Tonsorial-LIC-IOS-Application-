//
//  ViewController.swift
//  Tonsorial LIC
//
//  Created by Jose Delaguarda on 4/23/19.
//  Copyright © 2019 DLGTECH. All rights reserved.
//


import UIKit
import WebKit
class ViewController: UIViewController{
    
    @IBOutlet weak var WebView: WKWebView!
    override func viewDidLoad(){
        super.viewDidLoad()
    
        let dictionaty = NSDictionary(object: "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36", forKey: "UserAgent" as NSCopying)
        UserDefaults.standard.register(defaults: dictionaty as! [String : Any])
        
    let url = URL(string: "https://lictonsorial.resurva.com/book")
        let request = URLRequest(url: url!)
        
        WebView.load(request)
    }
}
