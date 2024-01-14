//
//  NavigationLinkBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 1/14/24.
//

import SwiftUI

// MARK: - Navigation Destination

struct NavigationLinkBasic: View {
    var body: some View {
        NavigationStack {
            VStack (spacing: 20) {
                NavigationLink(value: "Srting test") {
                    Text("Navigation Link 1")
                }
                NavigationLink(value: true) {
                    Text("Navigation Link 2")
                }
            }
            .navigationDestination(for: String.self, destination: { stringValue in
                Text("value is \(stringValue)").bold()
            })
            .navigationDestination(for: Bool.self, destination: { boolValue in
                Text("value is \(boolValue.description)").bold()
            })
            .navigationTitle("Navigation Destination")
        }
        .font(.title)
    }
}


// MARK: - NavigationLink with sheet
struct NavigationLinkisPresented: View {
    
    @State private var showSheet: Bool = false
    @State private var navigate: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("ShowSheet") {
                    showSheet.toggle()
                }
            }
            .navigationTitle("Navigation Sheet")
            .sheet(isPresented: $showSheet, content: {
                VStack (spacing: 20) {
                    NavigationLink {
                        Text("Destination from Link")
                    } label: {
                        Text("Navigation Link")
                    }

                    Button("Button Link") {
                        showSheet = false
                        navigate = true
                    }
                }
            })
            .navigationDestination(isPresented: $navigate) {
                Text("Destination from Button")
            }
        }
        .font(.title)
    }
}

#Preview("Destination") {
    NavigationLinkBasic()
}

#Preview("Sheet") {
    NavigationLinkisPresented()
}
