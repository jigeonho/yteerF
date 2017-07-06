//
//  MessageVO.swift
//  Freety
//
//  Created by jigunho on 2017. 7. 1..
//  Copyright © 2017년 Sopt20th. All rights reserved.
//

import Foundation
import ObjectMapper
class MessageVO : Mappable {
    
    var message : String?
    var detail : String?
    
    func mapping(map: Map) {
        message <- map["message"]
        detail <- map["detail"]
    }
    required init(map : Map) {}
    
}
