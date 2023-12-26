//
//  ExternalWebLink.swift
//  AnimalKR
//
//  Created by 최승용 on 2023/12/26.
//

import SwiftUI

struct ExternalWebLink: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("멸종 위기 야생생물 포털")
                
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(destination: (URL(string: animal.link)!)) {
                        Text(animal.name)
                    }
                    .foregroundColor(.accentColor)
                }
            }
        }
    }
}

struct ExternalWebLink_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWebLink(animal: Animal.sampleAnimal)
    }
}
