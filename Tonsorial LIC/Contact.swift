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
        let url = URL(string: "https://www.facebook.com/longislandcitybarber/")
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
    
       
        
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}

