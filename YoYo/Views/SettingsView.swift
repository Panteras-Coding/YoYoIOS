//
//  SettingsView.swift
//  YoYo
//
//  Created by Juan Carlos SG on 01/09/20.
//  Copyright © 2020 Panteras UP Coding. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @Binding var settingsViewShow : Bool
    var body: some View {
        ZStack {
            Text("Settings")
            VStack {
                HStack {
                    Button(action: {
                        self.settingsViewShow.toggle()
                    }) {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .frame(width: 20, height: 30)
                            .foregroundColor(Color("Red_YoYo"))
                            .padding()
                    }
                    Spacer()
                }
                Spacer()
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
