//
//  ContentView.swift
//  YoYo
//
//  Created by Juan Carlos SG on 13/08/20.
//  Copyright © 2020 Panteras UP Coding. All rights reserved.
//

import SwiftUI

var screenWidth = UIScreen.main.bounds.width
var screenHeight = UIScreen.main.bounds.height
var edges = UIApplication.shared.windows.first?.safeAreaInsets

struct ContentView: View {
    @State var x = 120 - screenWidth
    var body: some View {
        ZStack (alignment: .leading){
            MainView(x: self.$x)
            Color.black.opacity(x == 0 ? 0.5 : 0)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    withAnimation {
                        self.x = 120 - screenWidth
                    }
                }
            SlideView(x: self.$x).offset(x: x)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
