//
//  LoginView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    @ObservedObject var viewRouter: ViewRouter
        
    @State var userId = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            Text("SKHUM")
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundColor(.green)
            
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 250, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.891), radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                Text("ID")
                    .padding(.init(top: 0, leading: 0, bottom: 30, trailing: 210))
                TextField("학번을 입력해 주세요.", text: $userId)
                    .padding(.init(top: 30, leading: 10, bottom: 0, trailing: 0))
            }
            .frame(width: 250, height: 50, alignment: .center)
            .padding(.init(top: 50, leading: 0, bottom: 30, trailing: 0))
            
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 250, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.891), radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                Text("Password")
                    .padding(.init(top: 0, leading: 0, bottom: 30, trailing: 150))
                SecureField("비밀번호를 입력해 주세요.", text: $password)
                    .padding(.init(top: 30, leading: 10, bottom: 0, trailing: 0))
            }
            .frame(width: 250, height: 50, alignment: .center)
            .padding(.init(top: 0, leading: 0, bottom: 50, trailing: 0))
            
            Button(action: {
                viewModel.TryLogin(id: userId, name: password) { (err) in
                    if let err = err{
                        print("Failed to create post object:", err)
                        return
                    }
                    viewRouter.currentPage = "Main"
                }
            }, label: {
                Text("Login")
                    .frame(width: 250, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(8)
            })
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewRouter: ViewRouter())
    }
}
