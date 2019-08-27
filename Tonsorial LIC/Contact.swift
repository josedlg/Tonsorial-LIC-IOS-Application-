//
//  Contact.swift
//  Tonsorial LIC
//
//  Created by Jose Delaguarda on 6/19/19.
//  Copyright © 2019 DLGTECH. All rights reserved.
//

import UIKit
import WebKit

class Contact: UIViewController{
    @IBOutlet weak var webView: WKWebView!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://goo.gl/maps/anbVAdkSFseouPj58")
        let request = URLRequest(url: url!)
        
        webView.load(request)
    
    
}
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func fbButtonClicked(_ sender: UIButton) {
        let instagram = URL(string: "https://facebook.com/longislandcitybarber/")!
        
        if UIApplication.shared.canOpenURL(instagram) {
            UIApplication.shared.open(instagram, options: [UIApplication.OpenExternalURLOptionsKey(rawValue: ""):""], completionHandler: nil)
        } else {
            print("facebook not installed")
        }
    }
    
    @IBAction func igButtonClicked(_ sender: UIButton) {
        let instagram = URL(string: "https://instagram.com/lic_tonsorial/")!
        
        if UIApplication.shared.canOpenURL(instagram) {
            UIApplication.shared.open(instagram, options: [UIApplication.OpenExternalURLOptionsKey(rawValue: ""):""], completionHandler: nil)
        } else {
            print("Instagram not installed")
        }
    }
    @IBAction func twButtonClicked(_ sender: UIButton) {
        let instagram = URL(string: "https://twitter.com/Lic_tonsorial")!
        
        if UIApplication.shared.canOpenURL(instagram) {
            UIApplication.shared.open(instagram, options: [UIApplication.OpenExternalURLOptionsKey(rawValue: ""):""], completionHandler: nil)
        } else {
            print("Twitter not installed")
        }
    }
}

