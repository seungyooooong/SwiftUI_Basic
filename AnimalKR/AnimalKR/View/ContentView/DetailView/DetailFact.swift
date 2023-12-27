//
//  DetailFact.swift
//  AnimalKR
//
//  Created by 최승용 on 2023/12/26.
//

import SwiftUI

struct DetailFact: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach (animal.fact, id:\.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(.page) 
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

struct DetailFact_Previews: PreviewProvider {
    static var previews: some View {
        DetailFact(animal: Animal.sampleAnimal)
    }
}
