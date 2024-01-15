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

// MARK: - Path

// model
struct ProductForNav: Hashable {
    var name: String
    var price: Double
}

struct DateForNav: Hashable {
    var name: String
    var date: Date
}

struct NavigationLinkPath: View {
    
    @State private var product = ProductForNav(name: "iPhone 15 pro", price: 150.99)
    @State private var date = DateForNav(name: "buy date", date: .now)
    @State private var naviPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $naviPath) {
            VStack (spacing: 20) {
                List {
                    NavigationLink(value: product) {
                        Text(product.name)
                    }
                    
                    NavigationLink(value: date) {
                        Text(date.name)
                    }
                }
            }
            .navigationTitle("Order")
            .navigationDestination(for: ProductForNav.self) { product in
                List {
                    Text(product.name)
                    Text(product.price, format: .currency(code: "USD"))
                        .foregroundStyle(.secondary)
                }
                .navigationTitle("Price Detail")
            }
            .navigationDestination(for: DateForNav.self) { when in
                List {
                    Text(when.name)
                    Text(when.date.formatted(date: .long, time: .omitted))
                        .foregroundStyle(.secondary)
                }
                .navigationTitle("Date Detail")
            }
        }
        .font(.title)
    }
}

// MARK: - To Root View
struct NavigationLinkToRoot: View {
    
    @State private var navPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $navPath) {
            VStack (spacing: 20) {
                NavigationLink(value: "View 2") {
                    Text("Go to the second view")
                }
                NavigationLink(value: "View 3") {
                    Text("Go to the third view")
                }
            }
            .navigationTitle("Root View")
            .navigationDestination(for: String.self) { pathValue in
                if pathValue == "View 2" {
                    NaviLinkView2(navPath: $navPath)
                } else {
                    NaviLinkView3(navPath: $navPath)
                }
            }
        }
        .font(.title)
    }
}

struct NaviLinkView2: View {
    @Binding var navPath: [String]
    
    var body: some View {
        VStack (spacing: 20) {
            NavigationLink(value: "View 3") {
                Text("Go to the Third View")
            }
            
            Text("NavPath: ")
            Text(navPath, format: .list(type: .and, width: .narrow))
        }
    }
}

struct NaviLinkView3: View {
    @Binding var navPath: [String]
    
    var body: some View {
        VStack (spacing: 20) {
            Button("Go to the Root View") {
                navPath.removeAll()
            }
            Text("NavPath: ")
            Text(navPath, format: .list(type: .and, width: .narrow))
        }
    }
}

#Preview("Destination") {
    NavigationLinkBasic()
}

#Preview("Sheet") {
    NavigationLinkisPresented()
}

#Preview("Path") {
    NavigationLinkPath()
}

#Preview("Root") {
    NavigationLinkToRoot()
}

