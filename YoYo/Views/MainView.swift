//
//  MainView.swift
//  YoYo
//
//  Created by Juan Carlos SG on 13/08/20.
//  Copyright © 2020 Panteras UP Coding. All rights reserved.
//

import SwiftUI
import GoogleMaps
import CoreLocation

struct MainView: View {
    @Binding  var x : CGFloat
    @State private var keyboardHeight: CGFloat = 0
    var body: some View {
        ZStack {
            GoogleMapsView().edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Button(action: {
                        withAnimation  {
                            self.x = 0
                        }
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 60, height: 60)
                                .foregroundColor(Color("Background"))
                                .shadow(radius: 5, x: 5, y:5)
                            Image(systemName: "line.horizontal.3")
                                .resizable()
                                .frame(width: 30, height: 25)
                                .foregroundColor(Color("Red_YoYo"))
                        }.padding(10)
                    }
                    Spacer(minLength: 0)
                }
                Spacer(minLength: 0)
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 60, height: 60)
                                .foregroundColor(Color("Background"))
                                .shadow(radius: 5, x: 5, y:5)
                            Image(systemName: "location.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color("Red_YoYo"))
                        }.padding(.bottom)
                    }
                }.frame(width: screenWidth - 30)
                TravelMenuView()
            }
            .padding(.bottom, keyboardHeight)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

