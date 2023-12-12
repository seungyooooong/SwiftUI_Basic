//
//  TabViewBasic.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/12.
//

import SwiftUI

struct TabViewBasic: View {
    @State var initPageNumber: Int = 0
    
    var body: some View {
        // selection: TabView가 어느 페이지를 가리키는지 설정하는 것
        TabView(selection: $initPageNumber) {
            HomeView(selectedTab: $initPageNumber)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("둘러보기 화면")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("프로필 화면")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.red)
    }
}

struct TabViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBasic()
    }
}

// HomeView
struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.top)
            
            VStack(spacing: 20) {
                Text("홈 화면")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("프로필 화면 이동")
                        .font(.headline)
                        .padding(20)
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
