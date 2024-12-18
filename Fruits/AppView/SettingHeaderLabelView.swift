//
//  SettingHeaderLabelView.swift
//  Fruits
//
//  Created by Mahmoud Maamoun on 18/12/2024.
//

import SwiftUI

struct SettingHeaderLabelView: View {
    
    var labelText: String
    var labelImage: String

    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
            
        }
    }
}

#Preview {
    SettingHeaderLabelView(labelText: "Fruits", labelImage: "info.circle")
}
