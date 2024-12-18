//
//  SettingView.swift
//  Fruits
//
//  Created by Mahmoud Maamoun on 18/12/2024.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack(spacing:20) {
                    GroupBox(label:
                    SettingHeaderLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center) {
                            Image("logo")
                                .resizable().scaledToFit()
                                .frame(width: 80,height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    GroupBox(label: SettingHeaderLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical,4)
                      
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                          .padding(.vertical, 8)
                          .frame(minHeight: 60)
                          .layoutPriority(1)
                          .font(.footnote)
                          .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.green)
                            }
                            else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .padding()
                    }
              
                    GroupBox(label:SettingHeaderLabelView(labelText: "APPLICATION", labelImage: "apps.iphone")) {
                        Divider().padding(.vertical,4)
                       
                        SettingsRowView(name: "Developer", content: "Mahmoud Maamoun")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Linkedin", linkLabel: "Mahmoud Maamoun", linkDestination: "https://eg.linkedin.com/in/mahmoudmaamoun")
                    }
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                  trailing:
                    Button(action: {
                      presentationMode.wrappedValue.dismiss()
                    }) {
                      Image(systemName: "xmark")
                    }
                )
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
}
