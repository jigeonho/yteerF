//
//  writerInfo.swift
//  Freety
//
//  Created by jigunho on 2017. 7. 1..
//  Copyright © 2017년 Sopt20th. All rights reserved.
//

import Foundation
import ObjectMapper
class writerInfoVO : Mappable{
    
    var writerId : Int?
    var writerImg : String?
    var writerName : String?
    var writerBelongName : String?
    
    
    func mapping(map: Map) {
        
        writerId <- map["writerId"]
        writerImg <- map["writerImg"]
        writerName <- map["writerName"]
        writerBelongName <- map["writerBelongName"]
    }
    required init(map : Map) {}

    
}
