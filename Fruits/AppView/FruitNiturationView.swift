//
//  FruitNiturationView.swift
//  Fruits
//
//  Created by Mahmoud Maamoun on 17/12/2024.
//

import SwiftUI

struct FruitNiturationView: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g") {
                
                    ForEach(0 ..< nutrients.count ,id: \.self) { item in
                        Divider().padding(.vertical,2)
                        HStack {
                            Group {
                                Image(systemName: "info.circle")
                                Text(nutrients[item])
                            }
                            .foregroundStyle(fruit.gradientColors[1])
                            Spacer(minLength: 25)
                            Text(fruit.nutrition[item])
                                .multilineTextAlignment(.trailing)
                        }
                    }
                    Spacer()
                
            }
            
        }
    }
}

#Preview {
    FruitNiturationView(fruit: fruitsData[0])
}
