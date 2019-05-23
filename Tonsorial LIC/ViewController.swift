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
        
    let url = URL(string: "https://lictonsorial.resurva.com/book")
        let request = URLRequest(url: url!)
        
        WebView.load(request)
    }
}
