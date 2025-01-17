//
//  UIViewPreview.swift
//  CamelMap
//
//  Created by 박종혁 on 1/17/25.
//

import UIKit

#if canImport(SwiftUI) && DEBUG
import SwiftUI
struct UIViewPreview<View : UIView>: UIViewRepresentable {
    let view: View
    
    init(_ builder: @escaping () -> View) {
        view = builder()
    }
    
    func makeUIView(context: Context) -> some UIView {
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}
#endif

