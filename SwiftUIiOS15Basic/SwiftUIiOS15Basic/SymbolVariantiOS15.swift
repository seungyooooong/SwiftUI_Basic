//
//  SymbolVariantiOS15.swift
//  SwiftUIiOS15Basic
//
//  Created by 최승용 on 2024/01/04.
//

import SwiftUI

struct SymbolVariantiOS15: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("Symbol Variant")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
            
            List {
                Label("None", systemImage: "heart").symbolVariant(.none)
                Label("Fill", systemImage: "heart").symbolVariant(.fill)
                Label("Circle", systemImage: "heart").symbolVariant(.circle)
                Label("Circle Fill", systemImage: "heart").symbolVariant(.circle.fill)
                Label("Rectangle", systemImage: "heart").symbolVariant(.rectangle)
                Label("Rectangle Fill", systemImage: "heart").symbolVariant(.rectangle.fill)
                Label("Square", systemImage: "heart").symbolVariant(.square)
                Label("Square Fill", systemImage: "heart").symbolVariant(.square.fill)
                Label("Slash", systemImage: "heart").symbolVariant(.slash)
                Label("Slash Fill", systemImage: "heart").symbolVariant(.slash.fill)
            }
        }
        .font(.title)
    }
}

struct SymbolVariantiOS15_Previews: PreviewProvider {
    static var previews: some View {
        SymbolVariantiOS15()
    }
}
