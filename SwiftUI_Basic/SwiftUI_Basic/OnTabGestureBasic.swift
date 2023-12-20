//
//  OnTabGestureBasic.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/13.
//

import SwiftUI

struct OnTabGestureBasic: View {
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("1. normal Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25.0)
            }
            
            Text("2. onTabGesture one click")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25.0)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Text("3. onTabGesture double click")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25.0)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            
            Spacer()
            
        }
        .padding(40)
    }
}

struct OnTabGestureBasic_Previews: PreviewProvider {
    static var previews: some View {
        OnTabGestureBasic()
    }
}
