//
//  AboutUs.swift
//  Tonsorial LIC
//
//  Created by Jose Delaguarda on 6/18/19.
//  Copyright © 2019 DLGTECH. All rights reserved.
//

import UIKit

class AboutUs : UIViewController {
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageArray = [UIImage]()
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        mainScrollView.frame = view.frame
    imageArray = [#imageLiteral(resourceName: "About Us-1"), #imageLiteral(resourceName: "slide2"),#imageLiteral(resourceName: "slide5"),#imageLiteral(resourceName: "slide7"),#imageLiteral(resourceName: "slide4"), #imageLiteral(resourceName: "IMG_0266-1"),#imageLiteral(resourceName: "slide3")]
        
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
        
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

