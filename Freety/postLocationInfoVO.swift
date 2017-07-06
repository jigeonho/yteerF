//
//  postLocation.swift
//  Freety
//
//  Created by jigunho on 2017. 7. 1..
//  Copyright © 2017년 Sopt20th. All rights reserved.
//

import Foundation
import ObjectMapper
class postLocationInfoVO : mappable{
    
    var fullAddress : String?
    var sido : String?
    var sigugun : String?
    var dong : String?
    var detail : String?
    var latitude : String?
    var longitude : String?
    
    
    func mapping(map: Map) {
     
        fullAddress <- map["fullAddress"]
        sido <- map["sido"]
        sigugun <- map["sigugun"]
        dong <- map["dong"]
        detail <- map["detail"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        
    }
    required init(map : Map) {}

    
}
