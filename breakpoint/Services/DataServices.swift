//
//  DataServices.swift
//  breakpoint
//
//  Created by 張書涵 on 2017/11/7.
//  Copyright © 2017年 AliceChang. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataServices{
    static let instance = DataServices()
    
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_GROUPS = DB_BASE.child("groups")
    private var _REF_FEED = DB_BASE.child("feed")
    
    var REF_BASE:DatabaseReference{
        return _REF_BASE
    }
    
    
    var REF_USERS:DatabaseReference{
        return _REF_USERS
    }
    
    var  REF_GROUPS:DatabaseReference{
        return _REF_FEED
    }
    
    
    //建立用戶的func
    func createDBUer(uid:String,userData:Dictionary<String,Any>){
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
}
