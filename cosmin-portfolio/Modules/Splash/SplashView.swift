//
//  SplashView.swift
//  cosmin-portfolio
//
//  Created by Cosmin Cosan - work on 15.11.2024.
//

import SwiftUI
import Lottie

struct SplashView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 24) {
                lottieView
                
                Text("iOS developer")
                    .foregroundStyle(.white)
            }
        }
    }
}

extension SplashView {
    private var lottieView: some View {
        LottieView(name: "LoadingAnimation")
            .frame(width: 170, height: 170)
    }
}

#Preview {
    SplashView()
}
