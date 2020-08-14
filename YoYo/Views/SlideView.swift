//
//  SlideView.swift
//  YoYo
//
//  Created by Juan Carlos SG on 13/08/20.
//  Copyright © 2020 Panteras UP Coding. All rights reserved.
//

import SwiftUI

struct SlideView: View {
    @Binding var x : CGFloat
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.gray)
                    .padding()
                Spacer(minLength: 0)
                Button(action: {
                    withAnimation {
                        self.x = 120 - screenWidth
                    }
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("Red_YoYo"))
                        .padding()
                }
                
            }
            HStack {
                Spacer(minLength: 0)
                VStack {
                    Image("Profile_Pic")
                        .resizable()
                        .frame(width: 115, height: 115)
                        .cornerRadius(40)
                        .shadow(radius: 5, x: 5, y: 5)
                    Text("Hola, Usuario")
                        .foregroundColor(.gray)
                        .font(.system(size: 20))
                    Spacer(minLength: 0)
                    Image("Logo_YoYo")
                        .padding(.bottom, 5)
                    Text("YoYo 2020")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                        .padding(.bottom,5)
                }
                Spacer(minLength: 0)
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, edges!.top == 0 ? 15: edges?.top)
        .padding(.bottom, edges!.top == 0 ? 15: edges?.bottom)
        .frame(width: screenWidth - 120)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SlideView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
