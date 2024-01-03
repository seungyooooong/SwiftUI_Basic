//
//  TextSelectionBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by 최승용 on 2024/01/03.
//

import SwiftUI

struct TextSelectionBasic: View {
    
    
    var body: some View {
        Text("TextSelection")
            .font(.title2)
            .textSelection(.enabled)
    }
}

struct TextSelectionBasic_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBasic()
    }
}
