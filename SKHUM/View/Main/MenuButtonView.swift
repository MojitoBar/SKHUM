//
//  MenuButtonView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/27.
//

import SwiftUI

struct MenuButtonView: View {
    var image : String
    var title : String
    @Binding var selected : String
    @Binding var show : Bool
    
    var body: some View{
        Button(action: {
            withAnimation(.spring()){
                selected = title
            }
        }, label: {
            HStack (spacing: 15){
                Image(systemName: image)
                    .font(.system(size: 22))
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            .padding(.vertical)
        })
        .padding(.top, 5)
        .foregroundColor(.white)
    }
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
