//
//  currentPage.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/13.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject{
    let objectWillChange = PassthroughSubject<ViewRouter, Never>()
    
    var currentPage: String = "Login"{
        didSet{
            DispatchQueue.main.async {
                self.objectWillChange.send(self)
            }
        }
    }
}
