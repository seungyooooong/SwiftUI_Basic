//
//  DarkModeBasic.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/12.
//

import SwiftUI

struct DarkModeBasic: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Primary color")
                        .foregroundColor(.primary)
                    Text("Secondary color")
                        .foregroundColor(.secondary)
                    
                    Text("Black color")
                        .foregroundColor(.black)
                    Text("White color")
                        .foregroundColor(.white)
                    
                    Text("Red color")
                        .foregroundColor(.red)
                    Text("Adaptive color")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("use @Environment")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                }
            }
        }
    }
}

struct DarkModeBasic_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBasic()
    }
}
