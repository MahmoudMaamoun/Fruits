//
//  ContentView.swift
//  Fruits
//
//  Created by Mahmoud Maamoun on 17/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowingSetting:Bool = false
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
                isShowingSetting = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
                    .foregroundStyle(.black)
            }
                                           
                                          )
            )
            
            
            .navigationViewStyle(StackNavigationViewStyle())
            .sheet(isPresented: $isShowingSetting) {
                SettingsView()
            }
        }
    }
}

#Preview {
    ContentView()
}
