//
//  GaugeViewBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 1/10/24.
//

import SwiftUI

struct GaugeViewBasic: View {
    let gradient = Gradient(colors: [.green, .yellow, .orange, .red])
    let gaugeValue = 0.7
    var body: some View {
        Gauge(value: gaugeValue, label: {
//            Text("40%")
        }, currentValueLabel: {
                Text("\(Int(gaugeValue * 100))%")
                .font(.caption)
        }
        )
        .gaugeStyle(.accessoryLinear)
        .tint(gradient)
        .padding()
    }
}

#Preview {
    GaugeViewBasic()
}
