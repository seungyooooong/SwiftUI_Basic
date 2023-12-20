//
//  AppStorageBasic.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/18.
//

import SwiftUI

struct AppStorageBasic: View {
    
    // general data
    @State var generalName: String?
    
    // AppStorage data
    @AppStorage("name") var appStorageName: String?
    
    var body: some View {
        VStack (spacing: 20) {
            VStack (spacing: 10) {
                Text("use @State")
                    .font(.headline)
                
                Text(generalName ?? "What`s your name?")
                
                Button {
                    generalName = "seungyooooong"
                } label: {
                    Text("load name")
                }
            }
            .padding()
            .border(.green)
            
            
            VStack (spacing: 10) {
                Text("use @AppStorage")
                    .font(.headline)
                
                Text(appStorageName ?? "What`s your name????")
                
                Button {
                    appStorageName = "seungyoooooong"
                } label: {
                    Text("load name")
                }
            }
            .padding()
            .border(.red)
        }
    }
}

struct AppStorageBasic_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBasic()
    }
}
