//
//  postDetail.swift
//  Freety
//
//  Created by jigunho on 2017. 7. 1..
//  Copyright © 2017년 Sopt20th. All rights reserved.
//

import Foundation
import ObjectMapper
class postDetailVO : Mappable{
    
    var title : String?
    var content : String?
    var servicePrice : Int?
    var serviceTime : String?
    var typeCut : Int?
    var typeDye : Int?
    var typeEct : Int?
    var typePerm : Int?
    
    func mapping(map: Map) {
        title <- map["title"]
        content <- map["content"]
        servicePrice <- map["servicePrice"]
        serviceTime <- map["serviceTime"]
        typeCut <- map["typeCut"]
        typeDye <- map["typeDye"]
        typePerm <- map["typePerm"]
    }
    required init(map : Map) {}

}
