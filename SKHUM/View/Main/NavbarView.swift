//
//  navigationView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct NavbarView: View {
    @Binding var menuOpen: Bool
    var body: some View {
        ZStack{
            Rectangle()
                .frame(height: 120, alignment: .center)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 2, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            ZStack{
                Text("SKHUM")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.green)
                Button(action: {
                    withAnimation(.spring()){
                        menuOpen.toggle()
                    }
                }, label: {
                    Image(systemName: "list.dash")
                        .resizable()
                        .frame(width: 20, height: 15)
                })
                .padding(.leading, UIScreen.main.bounds.width * 0.8)
                .foregroundColor(.gray)
            }
            .padding(.top, 50)
            .frame(width: UIScreen.main.bounds.width, alignment: .center)
        }
        .padding(.top, -55)
    }
}

struct NavbarView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
