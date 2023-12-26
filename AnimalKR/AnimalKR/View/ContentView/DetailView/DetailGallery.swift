//
//  DetailGallery.swift
//  AnimalKR
//
//  Created by 최승용 on 2023/12/25.
//

import SwiftUI

struct DetailGallery: View {
    let animal: Animal
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 15) {
                ForEach (animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
    }
}

struct DetailGallery_Previews: PreviewProvider {
    static var previews: some View {
        DetailGallery(animal: Animal.sampleAnimal)
    }
}
