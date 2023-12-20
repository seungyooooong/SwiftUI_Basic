//
//  FruitViewModel.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/14.
//

import Foundation

class FruitViewModel: ObservableObject {
    // Published wrapper: @State와 유사하게 상태 값을 선언할 때 사용, class 안에서는 Published를 사용함
    // @Published 는 Fruit 배열의 값이 View 에서 변경이 되면 FruitViewModel에서 새로운 변경사항을 알아차려서 변경함
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruit()
    }
    
    // function
    func getFruit() {
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 2)
        let fruit3 = FruitModel(name: "바나나", count: 80)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}
