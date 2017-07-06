//
//  MainRequest.swift
//  Freety
//
//  Created by jigunho on 2017. 7. 2..
//  Copyright © 2017년 Sopt20th. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import Alamofire

class PostRequest : Request{
    
    
    func getPostRequest(){
        
        let url = "\(baseUrl)/postList"
        
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON{
            
            
            (response : DataResponse<PostList>) -> Void in

            switch response.result{
                
            case .success(let success):
                
                print("join success : \(success)")
                
            case .failure(let failure):
                
                // 실패시
                print("join failure : \(failure)")
                
            }
            
        }
    }
}
