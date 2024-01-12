//
//  ViewThatFitBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 1/11/24.
//

import SwiftUI

struct ViewThatFitBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("1. ViewThatFit Horizontal")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
            
            // fit with screen size
            ViewThatFits(in: .horizontal) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.pink.opacity(0.5))
                    .overlay {
                        Text("Horizontal LandScape")
                    }
                    .frame(width: 700, height: 75)
                
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.orange.opacity(0.7))
                    .overlay {
                        Text("Vertical Portrait")
                    }
                    .frame(width: 350, height: 75)
            }
        }
        .font(.title)
        .padding()
    }
}

struct ViewThatFitVertical: View {
    var body: some View {
            VStack (spacing: 20) {
                Text("2. ViewThatFit Vertical")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.blue)
                
                // fit with screen size
                ViewThatFits(in: .vertical) {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.blue.opacity(0.7))
                        .overlay {
                            Text("Vertical Portrait")
                        }
                        .frame(width: 200, height: 400)
                    
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.purple.opacity(0.5))
                        .overlay {
                            Text("Horizontal LandScape")
                        }
                        .frame(width: 400, height: 100)
                }
            }
            .font(.title)
            .padding()
    }
}

struct ViewThatFitPractice: View {
    @State var count: Int = 1
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Practice")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            ViewThatFits(in: .vertical) {
//                VStack (spacing: 10) {
//                    ForEach (1...count, id: \.self) { index in
//                        RoundedRectangle(cornerRadius: 15)
//                            .fill(.red)
//                            .frame(height: 200)
//                    }
//                }
                ScrollView {
                    VStack (spacing: 10) {
                        ForEach (1...count, id: \.self) { index in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.red)
                                .frame(height: 200)
                        }
                    }
                }
            }
            .onTapGesture {
                count += 1
            }
            
            Spacer()
        }
        .font(.title)
        .padding()
    }
}

#Preview("Horizontal") {
    ViewThatFitBasic()
}
#Preview("Vertical") {
    ViewThatFitVertical()
}

#Preview("Practice") {
    ViewThatFitPractice()
}
