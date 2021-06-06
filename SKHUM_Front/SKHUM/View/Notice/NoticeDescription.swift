//
//  NoticeDescription.swift
//  SKHUM
//
//  Created by judongseok on 2021/04/10.
//

import SwiftUI

struct NoticeDescription: View {
    @Binding var nt: [String]
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        VStack{
            ForEach (nt, id: \.self) { nt in
                Text("220   " + nt)
                    .frame(width: 280, height: 30, alignment: .leading)
            }
            .padding(.leading, -30)
        }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:Button(action: {
                self.mode.wrappedValue.dismiss()
            }, label: {
                Button(action: {
                    
                }, label: {
                    
                })
                Image(systemName: "arrow.left")
            }))
        
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
