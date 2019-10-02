//
//  MainVC.swift
//  Tonsorial LIC
//
//  Created by Jose Delaguarda on 3/31/19.
//  Copyright © 2019 DLGTECH. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(showAboutUs), name: NSNotification.Name("ShowAboutUs"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showBarbers), name: NSNotification.Name("ShowBarbers"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showServices), name: NSNotification.Name("ShowServices"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showProducts), name: NSNotification.Name("ShowProducts"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showContactUs), name: NSNotification.Name("ShowContactUs"), object: nil)
        
        RoundCornerButton.layer.cornerRadius = 4
        
    }
    
    
    @objc  func showAboutUs(){
        performSegue(withIdentifier: "ShowAboutUs", sender: nil)
        
    }
    @objc  func showBarbers(){
         performSegue(withIdentifier: "ShowBarbers", sender: nil)
    }
    @objc  func showServices(){
         performSegue(withIdentifier: "ShowServices", sender: nil)
    }
    @objc  func showProducts(){
         performSegue(withIdentifier: "ShowProducts", sender: nil)
    }
    @objc  func showContactUs(){
         performSegue(withIdentifier: "ShowContactUs", sender: nil)
    }
    @IBAction func onMoreTapped(){
        print("toggle side menu!")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    @IBAction func MakeCall(_ sender: Any) {
        guard let number  = URL(string: "tel://13476546386") else {return}
        UIApplication.shared.open(number,options: [:], completionHandler:nil)
        
    }
    @IBOutlet weak var RoundCornerButton: UIButton!
    //func generateCorners(){
        
       // RoundCornerButton.layer.cornerRadius = 4
    //}
    
   
}


