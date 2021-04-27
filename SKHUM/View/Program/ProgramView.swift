//
//  ProgramView.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct ProgramView: View {
    @StateObject var viewModel = ProgramCardViewModel()
    
    var body: some View {
        ScrollView{
            ForEach(viewModel.getPrograms()){ card in
//                ProgramCard(name: card.programName, mileage: card.givingMileage)
                ProgramCard(name: card.name)
            }
        }
        .padding(20)
        .frame(width: UIScreen.main.bounds.width * 0.9)
        .background(Color(red: 0.776, green: 0.776, blue: 0.789))
        .cornerRadius(20)
        .padding(.top, 30)
    }
}

struct ProgramView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
