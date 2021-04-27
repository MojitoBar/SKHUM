//
//  ProgramCard.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct ProgramCard: View {
    @State var name: String
//    @State var mileage: Int
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading){
                HStack{
                    Text(name)
                        .font(.title)
                    Spacer()
                    Text("50")
//                    Text(String(mileage))
//                        .font(.title3)
                }
                
                Text("모집기간: 21-04-05 ~ 21-04-11")
                Text("활동기간: 21-04-05 ~ 21-04-11")
                Text("모집인원: 25명")
            }
            .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 20))
        }
        .frame(width: UIScreen.main.bounds.width * 0.8, height: 150, alignment: .center)
        .padding(.vertical, 10)
    }
}

struct ProgramCard_Previews: PreviewProvider {
    static var previews: some View {
        ProgramView()
    }
}
