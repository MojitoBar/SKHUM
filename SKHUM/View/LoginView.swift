//
//  LoginView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct LoginView: View {
    @State var userId = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            Text("SKHUM")
                .font(.largeTitle)
                .foregroundColor(.green)
            
            ZStack{
                Capsule()
                    .foregroundColor(.gray)
                    .opacity(0.3)
                TextField("학번을 입력해 주세요.", text: $userId)
                    .padding(.leading, 10)
            }
            .frame(width: 250, height: 50, alignment: .center)
            
            ZStack{
                Capsule()
                    .foregroundColor(.gray)
                    .opacity(0.3)
                SecureField("비밀번호를 입력해 주세요.", text: $password)
                    .padding(.leading, 10)
            }
            .frame(width: 250, height: 50, alignment: .center)
            
            Button(action: {
                postLogin(id: userId, password: password)
            }, label: {
                Text("Login")
                    .frame(width: 250, height: 50, alignment: .center)
            })
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
