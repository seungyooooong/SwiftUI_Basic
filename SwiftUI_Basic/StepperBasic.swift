//
//  StepperBasic.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/11.
//

import SwiftUI

struct StepperBasic: View {
    @State var stepperValue: Int = 0
    @State var widthChange: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("기본 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthChange, height: 100)
            
            Stepper("직사각형 너비 변화") {
                differentWidth(amount: 20)
            } onDecrement: {
                differentWidth(amount: -20)
            }
            .padding()
        }
    }
    
    func differentWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthChange += amount
        }
    }
}

struct StepperBasic_Previews: PreviewProvider {
    static var previews: some View {
        StepperBasic()
    }
}
