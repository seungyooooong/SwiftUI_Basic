//
//  ScrollViewBasic.swift
//  SwiftUIBasiciOS17
//
//  Created by 최승용 on 1/19/24.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        ScrollView (.horizontal) {
            LazyHStack (spacing: 30) {
                ForEach(1...3, id: \.self) { index in
                    Image("mobile\(String(index))")
                        .padding(.horizontal)
                        .containerRelativeFrame(.horizontal)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

struct ScrollViewTransition: View {
    var body: some View {
        ScrollView (.vertical) {
            LazyVStack (spacing: 20) {
                ForEach(1...30, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue.gradient)
                        .frame(height: 200)
                        .scrollTransition(
                            topLeading: .animated,
                            bottomTrailing: .animated
                        ) { view, phase in
                            view
                                .opacity(1 - (phase.value < 0 ? -phase.value : phase.value))
                        }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview("Paging") {
    ScrollViewBasic()
}


#Preview("Transition") {
    ScrollViewTransition()
}
