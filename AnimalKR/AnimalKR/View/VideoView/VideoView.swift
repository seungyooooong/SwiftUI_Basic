//
//  VideoView.swift
//  AnimalKR
//
//  Created by 최승용 on 2023/12/21.
//

import SwiftUI

struct VideoView: View {
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach (vm.videos) { video in
                    NavigationLink {
                        VideoPlayerView(video: video)
                    } label: {
                        VideoListItem(video: video)
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("비디오", displayMode: .inline)
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(vm: AnimalViewModel())
    }
}
