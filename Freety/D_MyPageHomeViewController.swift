//
//  MyPageHomeViewController.swift
//  Freety
//
//  Created by jigunho on 2017. 6. 27..
//  Copyright © 2017년 Sopt20th. All rights reserved.
//

import Foundation
import UIKit
import MXSegmentedPager

class MyPageHomeViewController : MXSegmentedPagerController{
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
    let logo = UIImage(named: "freety_logo_black")
    let imageView = UIImageView(image: logo)
    imageView.frame = CGRect(x: 0, y: 0, width: 70, height: 35)
    imageView.contentMode = .scaleAspectFit
    self.navigationController?.navigationBar.backgroundColor = UIColor.white
    self.navigationItem.titleView = imageView
    
    
    segmentedPager.backgroundColor = .white
    
    let headerImage = UIImageView(frame: CGRect.zero)
    headerImage.image = UIImage(named: "header")
    
    
    
    segmentedPager.parallaxHeader.view = headerImage
    segmentedPager.parallaxHeader.mode = .fill
    segmentedPager.parallaxHeader.height = 300
    segmentedPager.parallaxHeader.minimumHeight = 20
    
    //segmentedPager.bounces = false
    
    // Segmented Control customization
    segmentedPager.segmentedControl.selectionIndicatorLocation = .down
    segmentedPager.segmentedControl.backgroundColor = .white
    segmentedPager.segmentedControl.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.black]
    segmentedPager.segmentedControl.selectedTitleTextAttributes = [NSForegroundColorAttributeName : UIColor.gray]
    segmentedPager.segmentedControl.selectionStyle = .fullWidthStripe
    segmentedPager.segmentedControl.selectionIndicatorColor = .gray
    }
    override func heightForSegmentedControl(in segmentedPager: MXSegmentedPager) -> CGFloat {
    return 48
    }
    override func segmentedPager(_ segmentedPager: MXSegmentedPager, titleForSectionAt index: Int) -> String {
        return ["글목록", "스타일", "후기"][index]
    }
    
    override func segmentedPager(_ segmentedPager: MXSegmentedPager, didScrollWith parallaxHeader: MXParallaxHeader) {
        print("progress \(parallaxHeader.progress)")
    }

    
}
