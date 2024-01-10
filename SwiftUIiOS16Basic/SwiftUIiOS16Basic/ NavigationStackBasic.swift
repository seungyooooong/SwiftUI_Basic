//
//   NavigationStackBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 1/10/24.
//

import SwiftUI

struct _NavigationStackBasic: View {
    @State var stack = NavigationPath()
    
    var body: some View {
        NavigationStack (path: $stack) {
            NavigationLink("Go to the Second Page", value: 40)
                .navigationDestination(for: Int.self) { value in
                    VStack (spacing: 20) {
                        
                        NavigationLink("Go to the Third Page", value: 100)
                        
                        Text("This is Second Page, value is \(value)")
                        Button {
//                            stack.removeLast()
                            stack = .init()
                        } label: {
//                            Text("Go to the Prev Page")
                            Text("Go to the First Page")
                        }
                    }
                }
        }
    }
}

#Preview {
    _NavigationStackBasic()
}
