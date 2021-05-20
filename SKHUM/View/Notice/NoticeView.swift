//
//  NoticeView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct NoticeView: View {
    var body: some View {
        
        let noticeTitle: [String] = ["[교수학습] 2021학년도 1학기 〈뿌리튼튼〉 관련 서식",
        "[사회진출]2021학년도 1학기 GoodWin 창업동아리 모집",
        "[교수학습] 2021학년도 1학기 학습법 특강(워크숍) 안내",
        "2021-1학기 취업역량강화특강 실시 안내",
        "2021학년도 1학기 5월 진로 취업 미니 특강 신청안내"]
        
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
                VStack{
                    ForEach (noticeTitle, id: \.self) { nt in
                        Text("220   " + nt)
                            .frame(width: 280, height: 30, alignment: .leading)
                    }
                    .padding(.leading, -30)
                }
                
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
