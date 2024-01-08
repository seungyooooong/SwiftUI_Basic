//
//  ShareLinkBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 1/8/24.
//

import SwiftUI

struct ShareLinkBasic: View {
    let image: ImageFile = ImageFile(image: Image("Dark Mode"))
    
    var body: some View {
        VStack (spacing: 20) {
            ShareLink(item: URL(string: "https://www.naver.com")!) {
                Text("Link Share")
                    .font(.largeTitle)
            }
            
            ShareLink(item: image, preview: SharePreview("Dark Mode Image", image: image.image)) {
                Text("Image Share")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview  {
    ShareLinkBasic()
}

struct ImageFile: Transferable {
    var image: Image
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }
}
