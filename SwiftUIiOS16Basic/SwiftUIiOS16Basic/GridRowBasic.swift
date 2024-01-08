//
//  GridRowBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 1/8/24.
//

import SwiftUI

struct GridRowBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            Grid {
                GridRow {
                    Color.red
                    Color.green
                    Color.blue
                }
                GridRow {
                    Color.yellow
                        .frame(width: 100, height: 100)
                    Color.cyan
                        .frame(width: 30, height: 30)
                        .gridCellColumns(1)
                        .gridCellAnchor(.center)
                }
            }
            .frame(height: 200)
            
            Divider()
            
            Grid {
                GridRow {
                    Color.blue
                        .frame(width: 30, height: 30)
                    Color.blue
                        .frame(width: 30, height: 30)
                    Color.blue
                        .frame(width: 30, height: 30)
                }
                
                GridRow {
                    Color.blue
                        .frame(width: 30, height: 30)
                }
            }
            .frame(height: 200)
        }
        .padding()
    }
}

#Preview {
    GridRowBasic()
}
