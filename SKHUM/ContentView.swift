//
//  SwiftUIView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewRouter: ViewRouter
    var body: some View {
        if viewRouter.currentPage == "Login"{
            LoginView(viewRouter: viewRouter)
        }
        else if viewRouter.currentPage == "Main"{
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
