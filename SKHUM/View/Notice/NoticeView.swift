//
//  NoticeView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct NoticeView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Notice")
                .font(.title2)
                .fontWeight(.light)
                .padding(.leading, 20)
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: 170, alignment: .center)
                    .foregroundColor(.white)
                    .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.891), radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
                NavigationLink(
                    destination: NoticeDescription(),
                    label: {
                        Image(systemName: "plus")
                            .foregroundColor(.green)
                    })
                    .padding(.init(top: 0, leading: 300, bottom: 130, trailing: 0))
            }
            .frame(width: UIScreen.main.bounds.width)
        }
        .padding(.top, 20)
    }
}

struct NoticeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
