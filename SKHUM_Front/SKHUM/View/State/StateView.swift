//
//  StateView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct StateView: View {
    var body: some View {
        HStack{
            Text("남은 횟수 : 2")
            Spacer()
            Text("마일리지 : 50")
        }
        .frame(width: UIScreen.main.bounds.width * 0.9, height: 50, alignment: .center)
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
