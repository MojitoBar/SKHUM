//
//  MainView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            NavbarView()
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                // StateView
                StateView()
                // NoticeView
                NoticeView()
                // programView
                ProgramView()
            })
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
