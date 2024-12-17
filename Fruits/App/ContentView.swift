//
//  ContentView.swift
//  Fruits
//
//  Created by Mahmoud Maamoun on 17/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailsView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                }
            }
            
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                
            }, label: {
                Image(systemName: "slider.horizontal.3")
                    .foregroundStyle(.black)
            }
                                           
                                          )
            )
            
            
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

#Preview {
    ContentView()
}
