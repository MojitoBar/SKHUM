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
                    ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
//                        // StateView
//                        sideview에서 보여주기로.
//                        StateView()
                        
                        // NoticeView
                        NoticeView()
                        // programView
                        ProgramView()
                    })
                    // 여백을 메꾸기 위함.
                    .padding(.top, -6)
                }
                .navigationBarHidden(true)
                .offset(x: 0, y: 70)
            }
            NavbarView(menuOpen: $sideMenuBarToggle)
                .offset(x: 0, y: -330)
            SideMenuView(sideMenuBarToggle: $sideMenuBarToggle)
        }
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
