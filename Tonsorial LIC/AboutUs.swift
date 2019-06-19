//
//  AboutUs.swift
//  Tonsorial LIC
//
//  Created by Jose Delaguarda on 6/18/19.
//  Copyright © 2019 DLGTECH. All rights reserved.
//

import UIKit

class AboutUs : UIViewController {
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    
    var imgArr = [ UIImage(named:"slide1"),
                   UIImage(named:"slide2"),
                   UIImage(named:"slide3"),
                   UIImage(named:"slide4"),
                   UIImage(named:"slide5"),
                   UIImage(named:"slide6"),
                   UIImage(named: "slide7"),
                   UIImage(named: "slide8")]
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        pageView.numberOfPages = imgArr.count
        pageView.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
    }
    }
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

    @objc func changeImage() {
        
        if counter < imgArr.count {
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageView.currentPage = counter
            counter += 1
        } else {
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            pageView.currentPage = counter
            counter = 1
        }
        
    }
    
}


