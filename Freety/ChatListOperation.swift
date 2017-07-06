//
//  ChatOperation.swift
//  Freety
//
//  Created by jigunho on 2017. 7. 5..
//  Copyright © 2017년 Sopt20th. All rights reserved.
//


import Foundation
import RealmSwift

class ChatListOperation : RealmOperation{
    
    func insertData(item : Object){
        
        try! realm.write{
            realm.add(item)
        }
        
    }
    func deleteObject(index : Int){
        
        let ddaylist = realm.objects(ChatVO.self)
        if ddaylist.count > 0{
            
            try! realm.write {
                realm.delete(ddaylist[index])
            }
            
        }
    }
    func getListFromRealm(){
        
        let ddaylists = realm.objects(ChatVO.self)
        if ddaylists.count > 0{
            
            //            for todo in todolists{
            //                print("- \(todo)")
            //            }
            
            self.view.realmResult(resultData: ddaylists, code: "dday")
        }
        
        
        
    }
    
    
}
