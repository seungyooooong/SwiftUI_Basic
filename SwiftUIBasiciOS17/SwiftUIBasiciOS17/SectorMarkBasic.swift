//
//  SectorMarkBasic.swift
//  SwiftUIBasiciOS17
//
//  Created by 최승용 on 1/16/24.
//

import SwiftUI
import Charts

struct SectorMarkData: Identifiable {
    let id: UUID = UUID()
    let label: String
    let value: Int
    
    static func fetchData() -> [SectorMarkData] {
        [
            SectorMarkData(label: "Jacob", value: 35),
            SectorMarkData(label: "Yong", value: 20),
            SectorMarkData(label: "Seung", value: 20),
            SectorMarkData(label: "Choi", value: 25)
        ]
    }
}

struct SectorMarkBasic: View {
    private let records: [SectorMarkData] = SectorMarkData.fetchData()
    
    var body: some View {
        VStack {
            Chart(records) { data in
                // 1. Pie chart
                // angle: 차트에서 나누는 기준이 되는 값
                // angularInset: 차트 안에서 나누는 구분선의 넓이(굵기)
                SectorMark(angle: .value("Record", data.value), angularInset: 4)
                    .cornerRadius(10)
                    .blur(radius: data.label == "Jacob" ? 5 : 0)
                    .foregroundStyle(by: .value("Record Label", data.label))
            }
            .padding()
            
            Divider()
            
            Chart(records) { data in
                // 2. Donut chart
                // innerRadius: 도넛 내부의 원형 크기
                // outerRadius: 도넛 외부의 padding 값
                SectorMark(angle: .value("Record", data.value),
                           innerRadius: MarkDimension.ratio(0.5),
                           outerRadius: MarkDimension.inset(50)
                )
                .foregroundStyle(by:.value("Record Label", data.value))
            }
            .padding()
        }
        .chartLegend(position: .bottom, alignment: .center, spacing: 20)
        .dynamicTypeSize(.accessibility1)
        .padding(.horizontal)
    }
}

#Preview("SectorMark") {
    SectorMarkBasic()
}
