//
//  FruitsCardView.swift
//  Fruits
//
//  Created by Mahmoud Maamoun on 17/12/2024.
//

import SwiftUI

struct FruitsCardView: View {
    
    var fruit:Fruit
    
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack(){
            VStack(spacing:20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8,x: 6,y: 8)
                    .scaleEffect(isAnimating ? 1:0.6)
                
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2,x: 2,y: 2)
                
                Text(fruit.headline)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,20)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear(){
            withAnimation(.easeInOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal,20)

    }
}

#Preview {
    FruitsCardView(fruit: fruitsData[0])
}
