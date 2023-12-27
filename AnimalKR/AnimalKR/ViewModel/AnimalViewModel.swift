//
//  AnimalViewModel.swift
//  AnimalKR
//
//  Created by 최승용 on 2023/12/21.
//

import Foundation

class AnimalViewModel: ObservableObject {
    @Published var animals: [Animal] = Bundle.main.decode("animals.json")
    @Published var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    @Published var videos: [Video] = Bundle.main.decode("videos.json")
}
