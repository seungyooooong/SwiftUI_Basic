//
//  ContentUnavailableViewBasic.swift
//  SwiftUIBasiciOS17
//
//  Created by 최승용 on 1/17/24.
//

import SwiftUI

struct ContentUnavailableViewBasic: View {
    
    
    var body: some View {
        ContentUnavailableView("Bad Connection", systemImage: "wifi.exclamationmark", description: Text("Internet is disconnection"))
        
        Divider()
        
        ContentUnavailableView(label: {
            Label("Delete Now?", systemImage: "questionmark.circle.fill")
        }, description: {
            Text("Please Click The Delete Button")
        }, actions: {
            HStack (spacing: 30) {
                Button("Cancel", role: .cancel) {
                    
                }
                Button("Delete", role: .destructive) {
                    
                }
                .buttonStyle(.borderedProminent)
            }
            .fixedSize()
        })
    }
}

struct ContentUnavailablePaging: View {
    var body: some View {
        TabView {
            ContentUnavailableView("SwiftUI", image: "mobile1", description: Text("SwiftUI is very Fast and String"))
            ContentUnavailableView("Sync", image: "mobile2", description: Text("iPhone and iPad can synchronise with iCould"))
            ContentUnavailableView("Shopping App", image: "mobile3", description: Text("There is a Online Shopping App on the iOS"))
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview("Intro") {
    ContentUnavailableViewBasic()
}
#Preview("Paging") {
    ContentUnavailablePaging()
}
