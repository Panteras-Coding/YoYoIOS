//
//  MainView.swift
//  YoYo
//
//  Created by Juan Carlos SG on 13/08/20.
//  Copyright © 2020 Panteras UP Coding. All rights reserved.
//

import SwiftUI
import MapKit

struct MainView: View {
    @Binding  var x : CGFloat
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
                                .foregroundColor(.white)
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
                    Button(action: {}) {
                        ZStack {
                            Circle()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.white)
                                .shadow(radius: 5, x: 5, y:5)
                            Image(systemName: "location.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color("Red_YoYo"))
                        }.padding(10)
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: screenWidth - 30, height: 80)
                        .foregroundColor(.white)
                        .shadow(radius: 5, x: 5, y:5)
                    VStack (spacing: 15){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 60, height: 5)
                            .foregroundColor(Color("Red_Scroll"))
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color("Gray_YoYo"))
                                .frame(width: screenWidth - 60, height: 40)
                            Text("Origen")
                                .foregroundColor(Color("Gray_YoYo"))
                        }
                    }
                }.padding(.bottom)
            }
        }
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

