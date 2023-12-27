//
//  VideoPlayerView.swift
//  AnimalKR
//
//  Created by 최승용 on 2023/12/27.
//

import SwiftUI

struct VideoPlayerView: View {
    let video: Video
    
    var body: some View {
        NavigationView {
            VStack {
                YoutubeView(videoID: video.videoid)
            }
            .navigationBarTitle("\(video.name)", displayMode: .inline)
        }
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(video: Video.sampleVideo)
    }
}
