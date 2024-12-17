//
//  FruitDetailsView.swift
//  Fruits
//
//  Created by Mahmoud Maamoun on 17/12/2024.
//

import SwiftUI

struct FruitDetailsView: View {
    
    var fruit:Fruit
    var body: some View {
        NavigationView() {
            ScrollView() {
                VStack(alignment:.center) {
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment:.leading,spacing:20) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNiturationView(fruit: fruit)
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        SourceLinkView()
                    }
                    .padding(.horizontal)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            } .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FruitDetailsView(fruit: fruitsData[0])
}
