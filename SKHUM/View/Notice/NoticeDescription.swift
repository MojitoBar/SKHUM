//
//  NoticeDescription.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct NoticeDescription: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        Text("Test")
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:Button(action: {
                self.mode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "arrow.left")
            }))
    }
}

struct NoticeDescription_Previews: PreviewProvider {
    static var previews: some View {
        NoticeDescription()
    }
}
