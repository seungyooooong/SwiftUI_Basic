//
//  CreditView.swift
//  AnimalKR
//
//  Created by 최승용 on 2023/12/25.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        VStack {
            Text("""
    Created by seungyooooong
""")
            .font(.footnote)
            .multilineTextAlignment(.center)
            .padding()
            .opacity(0.5)
        }
    }
}

struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}
