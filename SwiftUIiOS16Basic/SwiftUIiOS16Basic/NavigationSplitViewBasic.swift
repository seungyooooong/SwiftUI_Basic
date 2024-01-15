//
//  NavigationSplitViewBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 1/15/24.
//

import SwiftUI

struct NavigationSplitViewBasic: View {
    var body: some View {
        NavigationSplitView {
            Text("Sidebar")
                .navigationTitle("Navigation Split View")
        } detail: {
            Text("Detail")
        }

    }
}

struct NaviSplitViewVisibility: View {
    
    @State private var visibility = NavigationSplitViewVisibility.all
    
    var body: some View {
        NavigationSplitView (columnVisibility: $visibility) {
            Text("SideBar")
        } detail: {
            Text("Detail")
            Button {
                visibility = .all
            } label: {
                Text("Show SideBar")
            }
        }

    }
}

struct NaviSplitViewThree: View {
    
    @State private var visibility = NavigationSplitViewVisibility.all
    
    var body: some View {
        NavigationSplitView (columnVisibility: $visibility) {
            Text("SideBar")
                .navigationSplitViewColumnWidth(120)
        } content: {
            Text("Content")
                .navigationSplitViewColumnWidth(min: 200, ideal: 1000)
        } detail: {
            Text("Detail")
                .navigationSplitViewColumnWidth(200)
        }
        .navigationSplitViewStyle(.prominentDetail)

    }
}

#Preview ("Intro") {
    NavigationSplitViewBasic()
}
#Preview ("Visibility") {
    NaviSplitViewVisibility()
}
#Preview ("ThreeView") {
    NaviSplitViewThree()
}
