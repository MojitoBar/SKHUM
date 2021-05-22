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
                        HStack{
                            Image(systemName: "person.circle")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("주동석")
                                .font(.title2)
                                .fontWeight(.semibold)
                        }
                        
                        Text("wnehdtjr5@gmail.com")
                            .fontWeight(.semibold)
                    })
                    .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                }
                .padding(.horizontal)
                
                // Menu Buttons ...
                VStack (alignment: .leading){
                    MenuButtonView(image: "bitcoinsign.circle", title: "마일리지 현황", selected: $selectedIndex, show: $sideMenuBarToggle)
                    MenuButtonView(image: "book.closed", title: "신청한 프로그램", selected: $selectedIndex, show: $sideMenuBarToggle)
                    MenuButtonView(image: "link.circle", title: "E - 커리어 센터", selected: $selectedIndex, show: $sideMenuBarToggle)
                }
                .padding(.top)
                .padding(.leading, -50)
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
            .frame(width: width - 100)
            .background(Color.green)
            .offset(x: sideMenuBarToggle ? 0 : width - 100)
        }
        .background(Color.black.opacity(sideMenuBarToggle ? 0.3 : 0))
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
