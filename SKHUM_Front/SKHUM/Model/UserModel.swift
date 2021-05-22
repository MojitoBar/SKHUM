//
//  UserModel.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import Foundation

struct User: Identifiable, Decodable {
    var id: Int
    var nick: String
    var pw: String
}
