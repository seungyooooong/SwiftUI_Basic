//
//  MultiDatePickerBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 1/12/24.
//

import SwiftUI

struct MultiDatePickerBasic: View {
    
    @State private var dates: Set<DateComponents> = []
    
    var body: some View {
        VStack (spacing: 10) {
            Text("MultiDatePicker")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            MultiDatePicker("Date Picker", selection: $dates)
                .frame(height: 400)
                .tint(.red)
            
            List {
                Section("Selected Dates") {
                    ForEach(Array(dates), id: \.self) { date in
                        Text("\(date.month!)월 \(date.day!)일")
                        
                    }
                }
            }
            
            Spacer()
        }
    }
}

struct MultiDatePickerSheet: View {
    
    @State private var dates: Set<DateComponents> = []
    @State private var showSheet: Bool = false
    
    private var sortedDates: [String] {
        dates.sorted { date1, date2 in
            date1.date! < date2.date!
        }
        .map { date in
            "\(date.month!)월 \(date.day!)일"
        }
    }
    
    var body: some View {
        VStack (spacing: 10) {
            Text("MultiDatePicker")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            Button("Open Calendat") {
                showSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            
            List {
                Section("Selected Dates") {
                    ForEach(sortedDates, id: \.self) { date in
                        Text(date)
                    }
                }
            }
            
            Spacer()
        }
        .font(.title)
        .sheet(isPresented: $showSheet, content: {
            VStack {
                MultiDatePicker("Sheet", selection: $dates)
                
                Button("Done") {
                    showSheet.toggle()
                }
                .buttonStyle(.borderedProminent)
            }
            .presentationDetents([.medium])
        })
    }
}

#Preview("Basic") {
    MultiDatePickerBasic()
}
#Preview("Sheet") {
    MultiDatePickerSheet()
}
