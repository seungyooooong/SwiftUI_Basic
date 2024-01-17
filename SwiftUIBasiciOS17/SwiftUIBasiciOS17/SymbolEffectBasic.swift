//
//  SymbolEffectBasic.swift
//  SwiftUIBasiciOS17
//
//  Created by 최승용 on 1/17/24.
//

import SwiftUI

struct SymbolEffectBasic: View {
    
    @State private var startAnimation: Bool = false
    
    var body: some View {
        List {
            Label(
                title: { Text("Color change - variableColor") },
                icon: {
                    Image(systemName: "airplayaudio")
                        .foregroundStyle(.mint)
                        .symbolEffect(.variableColor)
                }
            )
            Label(
                title: { Text("Warning - pulse") },
                icon: {
                    Image(systemName: "airplayaudio.badge.exclamationmark")
                        .foregroundStyle(.red, .mint)
                        .symbolEffect(.pulse)
                }
            )
            Label(
                title: { Text("Start Button - bounce") },
                icon: {
                    Image(systemName: "lightbulb.max.fill")
                        .foregroundStyle(.mint)
                        .symbolEffect(.bounce, options: .repeating.repeat(2), value: startAnimation)
                }
            )
            
            Button("Start") {
                startAnimation.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
        .listStyle(.plain)
        .listRowSpacing(60)
    }
}

#Preview {
    SymbolEffectBasic()
}
