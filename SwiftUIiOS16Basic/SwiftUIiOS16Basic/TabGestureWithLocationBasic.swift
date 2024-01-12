//
//  TabGestureWithLocationBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 1/11/24.
//

import SwiftUI

struct TabGestureWithLocationBasic: View {
    @State var point: CGPoint = .init(x: 0.0, y: 0.0)
    @State var x: Double = 0.0
    @State var y: Double = 0.0
    
    var body: some View {
        VStack (spacing: 20) {
            HStack {
                Text("X Position is: ")
                Text("\(x)")
            }
            HStack {
                Text("Y Position is: ")
                Text("\(y)")
            }
            
            Rectangle()
                .fill(.green)
                .frame(width: 300, height: 300)
                .padding()
                .onTapGesture { location in
                    point = location
                    convertToDouble(point: point)
                }
            
            Rectangle()
                .fill(.blue)
                .frame(width: 300, height: 300)
                .padding()
                .onTapGesture(coordinateSpace: .global) { location in
                    point = location
                    convertToDouble(point: point)
                }
        }
    }
    
    func convertToDouble(point: CGPoint) {
        x = Double(point.x)
        y = Double(point.y)
    }
}

#Preview {
    TabGestureWithLocationBasic()
}
