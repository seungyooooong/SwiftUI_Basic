//
//  ChartBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 2024/01/04.
//

import SwiftUI
import Charts

// MARK: Sample Model and Data
struct WeightModel: Identifiable {
    var id: String = UUID().uuidString
    var day: String
    var weight: Double
}

var weightData: [WeightModel] = [
    WeightModel(day: "Sun", weight: 77),
    WeightModel(day: "Mon", weight: 80),
    WeightModel(day: "Tue", weight: 90),
    WeightModel(day: "Wed", weight: 82),
    WeightModel(day: "Thu", weight: 70),
    WeightModel(day: "Fri", weight: 60),
    WeightModel(day: "Sat", weight: 88)
]

// MARK: View

struct ChartBasic: View {
    var body: some View {
        let barColor: [Color] = [.red, .gray, .gray, .gray, .gray, .gray, .blue]
        
        ScrollView {
            VStack (spacing: 20) {
                Group {
                    Text("1. Bar Chart")
                    Chart(weightData) { item in
                        BarMark(
                            x: .value("Day", item.day),
                            y: .value("Weight", item.weight)
                        )
                        .foregroundStyle(by: .value("Day", item.day))
                        //                    .annotation (position: .top) {
                        //                        Image(systemName: "square.and.arrow.down")
                        //                            .foregroundStyle(.red)
                        //                    }
                    }
                    .chartForegroundStyleScale(
                        domain: weightData.compactMap({ weight -> String in
                            weight.day
                        }),
                        range: barColor
                    )
                    .frame(height: 200)
                }
                
                Divider()
                
                Group {
                    Text("2. Line Chart")
                    Chart(weightData) { item in
                        LineMark(
                            x: .value("Day", item.day),
                            y: .value("Weight", item.weight)
                        )
                        .interpolationMethod(.catmullRom)
                        .foregroundStyle(by: .value("Day", item.day))
                        .symbol {
                            Circle()
                                .fill(.yellow)
                                .frame(width: 10)
                                .shadow(radius: 2)
                        }
                        .lineStyle(.init(lineWidth: 5))
                        //                    .lineStyle(StrokeStyle(lineWidth: 10))
                        //                    .symbol(by: .value("Day", item.day))
                        //                    .interpolationMethod(.catmullRom)
                        //                    .interpolationMethod(.stepEnd)
                        .annotation(position: .overlay, alignment: .top) {
                            Text("\(Int(item.weight))")
                        }
                    }
                    .frame(height: 200)
                }
                
                Divider()
                
                Group {
                    Text("3. Rectangle Chart")
                    Chart(weightData) { item in
                        RectangleMark(
                            x: .value("Day", item.day),
                            y: .value("Weight", item.weight)
                        )
                    }
                    .frame(height: 200)
                }
                
                Divider()
                
                Group {
                    Text("4. Area Chart")
                    Chart(weightData) { item in
                        AreaMark(
                            x: .value("Day", item.day),
                            y: .value("Weight", item.weight)
                        )
                        .interpolationMethod(.catmullRom)
                        
                        RuleMark(
                            y: .value("Mid", 75)
                        )
                        .foregroundStyle(.red)
                    }
                    .frame(height: 200)
                }
            }
        }
        .padding()
    }
}

struct ChartBasic_Previews: PreviewProvider {
    static var previews: some View {
        ChartBasic()
    }
}
