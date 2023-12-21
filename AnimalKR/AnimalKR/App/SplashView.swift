//
//  SplashView.swift
//  AnimalKR
//
//  Created by 최승용 on 2023/12/21.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive: Bool = false
    @State private var size: Double = 0.5
    @State private var opacity: Double = 0.5
    
    
    var body: some View {
        if isActive {
            HomeView()
        } else {
            VStack (spacing: 20) {
                Image("splash")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                Text("Animal KR")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor.opacity(0.8))
                    .fontWeight(.heavy)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeInOut(duration: 1.5)) {
                    size = 1.0
                    opacity = 1.0
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        isActive = true
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
