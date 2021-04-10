//
//  SideMenuView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct SideMenuView: View {
    let width: CGFloat
    let height: CGFloat
    let isOpen: Bool
    let menuClose: () -> Void
    
    var body: some View {
        ZStack {
            if !self.isOpen {
                Button(action: {
                    self.menuClose()
                }, label: {
                    Image(systemName: "list.dash")
                        .foregroundColor(.black)
                })
                .offset(x: UIScreen.main.bounds.width / 2.5)
            }
            
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.white)
            .opacity(self.isOpen ? 0.1 : 0.0)
            .animation(Animation.easeIn)
            .onTapGesture {
                self.menuClose()
            }
            
            HStack {
                SideMenuContent(width: self.width, menuClose: self.menuClose)
                    .frame(width: self.width)
                    .background(Color.white)
                    .offset(x: self.isOpen ? UIScreen.main.bounds.width - self.width : UIScreen.main.bounds.width)
                    .padding(.top, -height)
                    .animation(.default)
                Spacer()
            }
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
