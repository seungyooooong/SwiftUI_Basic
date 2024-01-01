//
//  AppInfoLabel.swift
//  AnimalKR
//
//  Created by 최승용 on 2024/01/01.
//

import SwiftUI

struct AppInfoLabel: View {
    let labelText: String
    let labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            
            Image(systemName: labelImage)
                .hTrailing()
        }
    }
}

struct AppInfoLabel_Previews: PreviewProvider {
    static var previews: some View {
        AppInfoLabel(labelText: "AppInfoHead", labelImage: "gear")
    }
}
