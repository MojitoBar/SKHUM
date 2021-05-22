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
        VStack(alignment: .leading){
            Text("Programs")
                .font(.title2)
                .fontWeight(.light)
                .padding(.top, 30)
            ScrollView{
                ForEach(viewModel.getPrograms()){ card in
    //                ProgramCard(name: card.programName, mileage: card.givingMileage)
                    ProgramCard(name: card.name)
                }
            }
            .frame(width: UIScreen.main.bounds.width * 0.9)
        }
    }
}

struct ProgramView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
