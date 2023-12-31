//
//  HomeView.swift
//  AnimalKR
//
//  Created by 최승용 on 2023/12/21.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm: AnimalViewModel = AnimalViewModel()
    
    var body: some View {
        TabView() {
            ContentView(vm: vm)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            VideoView(vm: vm)
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Video")
                }
            GalleryView(vm: vm)
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
            AppInfoView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("AppInfo")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
