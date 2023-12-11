//
//  SliderBasic.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/11.
//

import SwiftUI

struct SliderBasic: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .blue
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("레벨: ")
                Text("\(sliderValue)")
                Text(String(format: "%.2f", sliderValue))
            }
            .foregroundColor(color)
            // value: int가 아닌 float 타입
            // in: 슬라이더 범위
            // step: 슬라이더 변경 단위
            // onEditingChanged: value가 변경될 때 처리할 이벤트
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .red
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("label")
                }
            )
            .accentColor(.red)
            .padding()
        }
    }
}

struct SliderBasic_Previews: PreviewProvider {
    static var previews: some View {
        SliderBasic()
    }
}
