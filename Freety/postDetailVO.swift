//
//  postDetailVO.swift
//  Freety
//
//  Created by jigunho on 2017. 7. 2..
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
    var typeEtc : Int?
    var typePerm : Int?
    func mapping(map: Map) {
        title <- map["title"]
        content <- map["content"]
        servicePrice <- map["servicePrice"]
        serviceTime <- map["sirviceTime"]
        typeCut <- map["typeCut"]
        typeEtc <- map["typeEtc"]
        typePerm <- map["typePerm"]
    }
    required init(map : Map) {}

}
