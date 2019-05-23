//
//  ViewController.swift
//  Tonsorial LIC
//
//  Created by Jose Delaguarda on 3/28/19.
//  Copyright © 2019 DLGTECH. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {
   
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    @objc func toggleSideMenu(){
        if sideMenuOpen{
            sideMenuOpen = false
            sideMenuConstraint.constant = -208
        }else {
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
        }
    }

}

