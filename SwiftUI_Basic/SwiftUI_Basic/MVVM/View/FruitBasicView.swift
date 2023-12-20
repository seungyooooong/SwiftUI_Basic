//
//  FruitBasicView.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/14.
//

import SwiftUI

struct FruitBasicView: View {
    
    // @ObservedObject 사용하여 ViewModel 객체화 하기 -> 주로 SubView 에서 사용 (부모 View에서 값을 넘겨 받았을 때)
    // @StateObject 사용하여 ViewModel 객체화 하기 -> View가 처음 생성, 초기화 될 때, 주로 부모 View에서 사용
//    @ObservedObject var fruitViewModel = FruitViewModel()
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack(spacing: 20) {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                }
            }
//            .onAppear {
//                fruitViewModel.getFruit()
//            }
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: SecondScreen(fruitViewModel: fruitViewModel),
                        label: {
                            Image(systemName: "arrow.right")
                                .font(.title)
                        }
                    )
            )
            .navigationTitle("Fruit List")
        }
    }
}

struct SecondScreen: View {
    @ObservedObject var fruitViewModel = FruitViewModel()

    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack(spacing: 20) {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Back")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }

            }
        }
    }
}

struct FruitBasicView_Previews: PreviewProvider {
    static var previews: some View {
        FruitBasicView()
    }
}
