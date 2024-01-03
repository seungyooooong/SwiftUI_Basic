//
//  SwipeActionBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by 최승용 on 2024/01/03.
//

import SwiftUI

struct SwipeActionBasic: View {
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0)
                    .swipeActions (edge: .trailing, allowsFullSwipe: false) {
                        Button {
                            
                        } label: {
                            Text("Save")
                        }
                        .tint(.green)
                        
                        Button {
                            
                        } label: {
                            Text("Delete")
                        }
                        .tint(.red)
                    }
                    .swipeActions (edge: .leading, allowsFullSwipe: true) {
                        Button {
                            
                        } label: {
                            Text("Share")
                        }
                        .tint(.yellow)
                    }
            }
        }
    }
}

struct SwipeActionBasic_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionBasic()
    }
}
