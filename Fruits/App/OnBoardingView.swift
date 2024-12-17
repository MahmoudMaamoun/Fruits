//
//  OnBoardingView.swift
//  Fruits
//
//  Created by Mahmoud Maamoun on 17/12/2024.
//

import SwiftUI

struct OnBoardingView: View {
    
    var fruits : [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
                FruitsCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)


    }
}

#Preview {
    OnBoardingView(fruits: fruitsData)
        .previewDevice("iPhone 13")
}
