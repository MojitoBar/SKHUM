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
            Spacer()
            Text("SKHUM")
                .font(.system(size: 30))
            Button(action: {
                menuOpen = true
            }, label: {
                Image(systemName: "list.dash")
                    .resizable()
                    .frame(width: 20, height: 15)
            })
            .padding(.leading, UIScreen.main.bounds.width * 0.8)
            .foregroundColor(.black)
        }
        .background(Color.white)
    }
}
extension NavbarView{
    
}

struct NavbarView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
