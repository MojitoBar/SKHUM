//
//  MainView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct MainView: View {
    @State var sideMenuBarToggle: Bool = false
    var body: some View {
        ZStack{
            NavigationView{
                VStack{
                    NavbarView(menuOpen: $sideMenuBarToggle)
                    ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                        // StateView
                        StateView()
                        // NoticeView
                        NoticeView()
                        // programView
                        ProgramView()
                    })
                }
                .navigationBarHidden(true)
                // side menubar
                Rectangle()
                    .frame(width: 250, alignment: .center)
                    .offset(x: self.sideMenuBarToggle ? 100 : UIScreen.main.bounds.width, y: 0)
                    .animation(.default)
                    .foregroundColor(.gray)
            }
        }
        .onTapGesture {
            if sideMenuBarToggle{
                sideMenuBarToggle = false
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
