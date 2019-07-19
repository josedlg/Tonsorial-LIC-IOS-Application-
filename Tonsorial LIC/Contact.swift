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
        let url = URL(string: "https://www.google.com/maps/place/32-86+Steinway+St,+Astoria,+NY+11103/@40.7567727,-73.9212617,18z/data=!4m5!3m4!1s0x89c25f3b24799959:0xada63e6e78ea3666!8m2!3d40.7570534!4d-73.9208482")
        let request = URLRequest(url: url!)
        
        webView.load(request)
       
        
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

