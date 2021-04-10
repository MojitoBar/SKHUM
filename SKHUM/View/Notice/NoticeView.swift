//
//  NoticeView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct NoticeView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width * 0.9, height: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
                .opacity(0.5)
            
            Text("공지사항")
            NavigationLink(
                destination: NoticeDescription(),
                label: {
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                })
                .padding(.init(top: 0, leading: 300, bottom: 100, trailing: 0))
        }
    }
}

struct NoticeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
