//
//  ButtonStyleBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by 최승용 on 2024/01/03.
//

import SwiftUI

struct ButtonStyleBasic: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("1. Basic Button Style")
                    .font(.headline)
                
                Button {
                    
                } label: {
                    Text("Bordered Button Style")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.bordered)
                
                Button {
                    
                } label: {
                    Text("BorderedProminent Button Style")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                
                Button {
                    
                } label: {
                    Text("Borderless Button Style")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderless)
            }
            .padding()
            
            Divider()
            
            VStack {
                Text("2. Set Button Size Use ControlSize")
                    .font(.headline)
                
                Button {
                    
                } label: {
                    Text("Large Control Size")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button {
                    
                } label: {
                    Text("Regular Control Size")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
                
                Button {
                    
                } label: {
                    Text("Small Control Size")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
                
                Button {
                    
                } label: {
                    Text("Mini Control Size")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.mini)
            }
            .padding()
        }
    }
}

struct ButtonStyleBasic_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBasic()
    }
}
