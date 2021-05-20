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
                Button(action: {
                    
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
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

struct NoticeDescription_Previews: PreviewProvider {
    static var previews: some View {
        NoticeDescription()
    }
}
