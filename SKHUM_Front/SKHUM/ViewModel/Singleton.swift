//
//  Singleton.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/11.
//
import SwiftUI
import Foundation

class Singleton{
    static let sharedInstance = Singleton()
    
    var IsLogin: Bool = false
    var LoginUser = User(id: 0, nick: "", pw: "")
    
    init(){ }
    
    public func getUser() -> User{
        return LoginUser
    }
    
    public func setUser(id: String){
        LoginUser = User.init(id: 1, nick: id, pw: "1234")
    }
    
    public func getIsLogin() -> Bool{
        return IsLogin
    }
    
    public func setIsLogin(islogin: Bool){
        IsLogin = islogin
    }
}
