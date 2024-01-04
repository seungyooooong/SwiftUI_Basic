//
//  TextiOS15.swift
//  SwiftUIiOS15Basic
//
//  Created by 최승용 on 2024/01/04.
//

import SwiftUI

struct TextiOS15: View {
    var body: some View {
        VStack (spacing: 10) {
            Text("1. Markdown")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
            
            Text("*Italic*")
            Text("_Italic_")
            Text("**Bold**")
            Text("***Bold & Italic***")
            Text("___Bold & Italic___")
            Text("[URL](https://www.naver.com)")
            Text("`print(test)`")
            
            Spacer()
        }
    
        VStack (spacing: 10) {
            Text("2. TextSelection")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
            
            Text("default text")
            
            Text("copy & share text")
                .textSelection(.enabled)
            
            Spacer()
        }
        .font(.title)
    }
}

struct TextiOS15_Previews: PreviewProvider {
    static var previews: some View {
        TextiOS15()
    }
}
