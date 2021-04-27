//
//  SideMenuView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/27.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var sideMenuBarToggle: Bool
    @State var width = UIScreen.main.bounds.width
    @State var edges = UIApplication.shared.windows.first?.safeAreaInsets
    @State var selectedIndex = ""
    
    var body: some View {
        // Side Menu
        HStack(spacing: 0){
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            VStack{
                HStack{
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    
                    Button(action: {
                        withAnimation(.spring()){
                            sideMenuBarToggle.toggle()
                        }
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.white)
                    })
                }
                .padding()
                .padding(.top, edges?.top)
                
                HStack(spacing: 15){
                    VStack(alignment: .leading, content: {
                        Text("Placeholder")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Text("wnehdtjr5@gmail.com")
                            .fontWeight(.semibold)
                    })
                    .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                }
                .padding(.horizontal)
                
                // Menu Buttons ...
                VStack (alignment: .leading){
                    MenuButtonView(image: "gear", title: "asdfasdfa", selected: $selectedIndex, show: $sideMenuBarToggle)
                    MenuButtonView(image: "gear", title: "asdfasdfa", selected: $selectedIndex, show: $sideMenuBarToggle)
                    MenuButtonView(image: "gear", title: "asdfasdfa", selected: $selectedIndex, show: $sideMenuBarToggle)
                    MenuButtonView(image: "gear", title: "asdfasdfa", selected: $selectedIndex, show: $sideMenuBarToggle)
                    MenuButtonView(image: "gear", title: "asdfasdfa", selected: $selectedIndex, show: $sideMenuBarToggle)
                }
                .padding(.top)
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
            .frame(width: width - 100)
            .background(Color.gray)
            .offset(x: sideMenuBarToggle ? 0 : width - 100)
        }
        .background(Color.black.opacity(sideMenuBarToggle ? 0.3 : 0))
    }
}
