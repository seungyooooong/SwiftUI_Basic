//
//  BackgroundMaterialBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by 최승용 on 2024/01/02.
//

import SwiftUI

struct BackgroundMaterialBasic: View {
    let url = URL(string: "https://picsum.photos/1000")
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                
                Spacer()
                Text("Material background example")
                    .font(.headline)
                
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
        }
        .background(
            AsyncImage(url: url) { image in
                image
            } placeholder: {
                ProgressView()
            }
        )
    }
}

struct BackgroundMaterialBasic_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialBasic()
    }
}
