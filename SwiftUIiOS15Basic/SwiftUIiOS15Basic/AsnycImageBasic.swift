//
//  AsnycImageBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by 최승용 on 2024/01/02.
//

import SwiftUI

struct AsnycImageBasic: View {
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        VStack (spacing: 20) {
            Text("1. Basic AsnycImage example")
                .font(.headline)
            
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
            } placeholder: {
                ProgressView()
            }
            
            Text("2. Use Switch example")
                .font(.headline)
            AsyncImage(url: url) { raw in
                switch raw {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                case .failure:
                    Text("Fail")
                default:
                    Text("Default")
                }
            }
        }
    }
}

struct AsnycImageBasic_Previews: PreviewProvider {
    static var previews: some View {
        AsnycImageBasic()
    }
}
