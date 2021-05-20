//
//  ProgramCard.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct ProgramCard: View {
    @State var name: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.891), radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: 150)
            VStack(alignment: .leading){
                HStack{
                    Text(name)
                        .font(.title2)
                        .fontWeight(.light)
                        .frame(width: 240, height: 30, alignment: .leading)
                        .lineLimit(1)
                    Spacer()
                    Text("25명")
                        .font(.title3)
                        .fontWeight(.light)
                }
                Text("교수학습센터")
                    .padding(.init(top: 1, leading: 0, bottom: 1, trailing: 0))
                    .font(.body)
                Divider()
                    .padding(.bottom, 5)
                HStack{
                    Image(systemName: "clock")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("4월 3일 ~ 4월 8일")
                        .font(.system(size: 15))
                    Spacer()
                    Text("50P")
                        .font(.title3)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.green)
                }
            }
            .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 20))
            .frame(width: UIScreen.main.bounds.width * 0.9)
        }
        .frame(width: UIScreen.main.bounds.width)
    }
}

struct ProgramCard_Previews: PreviewProvider {
    static var previews: some View {
        ProgramView()
    }
}
