//
//  AppInfoContent.swift
//  AnimalKR
//
//  Created by 최승용 on 2024/01/01.
//

import SwiftUI

struct AppInfoContent: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 5)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                
                if content != nil {
                    Text(content ?? "noValue")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .hTrailing()
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(destination: URL(string: "https://\(linkDestination!)")!) {
                        Text(linkLabel!)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                            .hTrailing()
                    }
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.accentColor)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct AppInfoContent_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AppInfoContent(name: "Sample", content: "Test")
            AppInfoContent(name: "Sample", linkLabel: "TestLink", linkDestination: "TestDestination")
        }
    }
}
