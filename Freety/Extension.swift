//
//  ExtensionViewController.swift
//  Freety
//
//  Created by jigunho on 2017. 6. 30..
//  Copyright © 2017년 Sopt20th. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher
extension UIViewController{
    
    func gsno(_ value : String?) -> String{
        if let _value = value{
            return _value
        }else{
            return ""
        }
    }
    func gino(_ value : Int?) -> Int{
        if let _value = value{
            return _value
        }else{
            return -1
        }
    }
    func gdno(_ value : Double?) -> Double{
        if let _value = value{
            return _value
        }else{
            return -1.0
        }
    }
    func getMemberToken() -> String{
        
//        let shared = UserDefaults.standard
//        if let _token = shared.string(forKey: "memberToken"){
//            return _token
//        }else{
//            return "no token"
//        }
        return "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJtZW1iZXJJZCI6NDksImlhdCI6MTQ5ODk5MzQ1OCwiZXhwIjoxNDk5MDc5ODU4fQ.fuxD0oIXyyd6QGK3Nj8paF7beWOTNUzlI-mkXAA0AsI"
        
    }
    func setMemberToken(_ token : String){
        
        let shared = UserDefaults.standard
        shared.setValue(token, forKey: "memberToken")
        
    }
    func checkMemberToken(){
        
        
    }
   
    func simpleAlert(_title : String,_ message : String){
        
        let alert = UIAlertController(title: "\(title)", message: "\(message)", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
        
    }
    func gotoHome(){
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "Hone")
        self.present(vc!, animated: true, completion: nil)
        
    }
    
}
extension UIImageView{
    
    public func imageFromUrl(_ urlString: String?, defaultImgPath : String) {
        let defaultImg = UIImage(named: defaultImgPath)
        if let url = urlString {
            if url.isEmpty {
                self.image = defaultImg
            } else {
                self.kf.setImage(with: URL(string: url), placeholder: defaultImg, options: [.transition(.fade(0.5))])
            }
        } else {
            self.image = defaultImg
        }
    }
}
extension UIView{
    
    func shake(){
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.duration = 0.3
        animation.values = [-10.0, 10.0, -5.0, 5.0, -5.0, 5.0, 0.0 ]
        layer.add(animation, forKey: "shake")
    } // shake()
    
    func roundCorner(){
        
        self.layer.borderWidth=5.0
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.cornerRadius = self.frame.size.height/2
        self.clipsToBounds = true
    }
}
