//
//  SideMenuVC.swift
//  Tonsorial LIC
//
//  Created by Jose Delaguarda on 3/28/19.
//  Copyright © 2019 DLGTECH. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row {
        case 0: NotificationCenter.default.post(name: NSNotification.Name("ShowAboutUs"), object: nil)
        case 1:NotificationCenter.default.post(name: NSNotification.Name("ShowBarbers"), object: nil)
        case 2:NotificationCenter.default.post(name: NSNotification.Name("ShowServices"), object: nil)
        case 3:NotificationCenter.default.post(name: NSNotification.Name("ShowProducts"), object: nil)
        case 4:NotificationCenter.default.post(name: NSNotification.Name("ShowContactUs"), object: nil)
        default: break
        }
    }

}
