//
//  ContentViewModel.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/13.
//

import Foundation

class ContentViewModel: ObservableObject {
    func checkLogin() -> Bool{
        print(Singleton.sharedInstance.IsLogin)
        return Singleton.sharedInstance.IsLogin
    }
}
