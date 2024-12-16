//
//  StartButtonView.swift
//  Fruits
//
//  Created by Mahmoud Maamoun on 17/12/2024.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button (action:{
            
        }) {
            HStack(spacing:8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal , 20)
            .padding(.vertical , 16)
            .background(
                Capsule().strokeBorder(.white,lineWidth: 1.5)
            )
        }
        .accentColor(.white)
    }
}

#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
}
