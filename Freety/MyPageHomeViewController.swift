//
//  M_D_MyPageHomeViewController.swift
//  Freety
//
//  Created by jigunho on 2017. 6. 27..
//  Copyright © 2017년 Sopt20th. All rights reserved.
//

import Foundation
import UIKit
class M_MyPageHomeViewController : UIViewController {

    @IBOutlet var profileImage: UIImageView!

    @IBOutlet var frontImage: UIImageView!
    @IBOutlet var backImage: UIImageView!
    @IBOutlet var sideImage: UIImageView!
    @IBOutlet var pickListCollectionView: UICollectionView!
    
    @IBOutlet var profileChangeBtn : UIButton!
    @IBOutlet var frontImageChangeBtn : UIButton!
    @IBOutlet var backImageChangeBtn : UIButton!
    @IBOutlet var sideImageChangeBtn : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
