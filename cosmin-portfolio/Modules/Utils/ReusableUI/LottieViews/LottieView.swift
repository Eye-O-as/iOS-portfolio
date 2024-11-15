//
//  LottieView.swift
//  cosmin-portfolio
//
//  Created by Cosmin Cosan - work on 15.11.2024.
//

import Foundation
import Lottie
import SwiftUI

struct LottieView: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode = .loop
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)

        let animationView = LottieAnimationView()
        let animation = LottieAnimation.named(name)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFill
        animationView.loopMode = loopMode
        animationView.play()

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])

        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
