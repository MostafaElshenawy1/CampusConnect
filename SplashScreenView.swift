//
//  SplashScreenView.swift
//  CampusConnect
//
//  Created by John Edgar on 2/19/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isAvtive = false
    @State private var logoScale: CGFloat = 0.0
    @State private var logoOpacity: Double = 0.0

    var body: some View {
        if isAvtive {
            ContentView()
        } else {
            Color.blue
                .ignoresSafeArea()
                .overlay(
                    VStack {
                        Spacer()
                        Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 0.8 * UIScreen.main.bounds.width * logoScale)
                            .opacity(logoOpacity)
                            .scaleEffect(logoScale)
                            .transition(.opacity)
                            .onAppear {
                                withAnimation(.easeOut(duration: 1.2)) {
                                    self.logoScale = 1.0
                                    self.logoOpacity = 1.0
                                }
                            }

                        Spacer()
                        Text("Campus Connect")
                            .font(Font.custom("Basterville-Bold", size: 35))
                            .foregroundColor(.white)
                    }
                )
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isAvtive = true
                    }
                }
        }
    }
}


struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
