//
//  BadgeBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by 최승용 on 2024/01/04.
//

import SwiftUI

struct BadgeBasic: View {
    var body: some View {
        TabView {
            Color.red
                .ignoresSafeArea(edges: .top)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Love")
                }
                .badge(0)
            
            
            Color.green
                .ignoresSafeArea(edges: .top)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Love")
                }
                .badge(5)
        
            Color.blue
                .ignoresSafeArea(edges: .top)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Love")
                }
                .badge("new")
        }
        
        List {
            Text("Hello")
                .badge("New")
        
            Text("Hello")
                .badge(10)
            
            Text("Hello")
                .badge(0)
            
            Text("Hello")
                .badge("")
        }
    }
}

struct BadgeBasic_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBasic()
    }
}
