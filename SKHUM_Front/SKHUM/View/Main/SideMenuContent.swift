//
//  SideMenuContent.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct SideMenuContent: View {
    let width: CGFloat
    let isOpen: Bool = true
    let menuClose: () -> Void
    
    var body: some View {
        VStack{
            ForEach(0..<10) { index in
                Text("\(index)")
                    .padding()
            }
        }
        .frame(width: self.width, height: UIScreen.main.bounds.height * 1.1)
        .background(Color.gray)
    }
}
