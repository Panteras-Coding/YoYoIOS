//
//  TravelMenuView.swift
//  YoYo
//
//  Created by Juan Carlos SG on 26/08/20.
//  Copyright © 2020 Panteras UP Coding. All rights reserved.
//

import SwiftUI

struct TravelMenuView: View {
    @State var origin : String = ""
    @State var destiny : String = ""
    @State var focused: [Bool] = [true, false]
    @State var travelViewShow = false
    var body: some View {
        ZStack {
            NavigationView {
                VStack (spacing: 20){
                    NavigationLink(destination: TravelView(travelViewShow: self.$travelViewShow), isActive: self.$travelViewShow) {
                        Text("")
                    }.hidden()
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 60, height: 5)
                        .foregroundColor(Color("Red_Scroll"))
                        .padding(.bottom, 5)
                    VStack  (spacing: 35){
                        HStack(spacing: 20){
                            TextField("¿Desde?", text: self.$origin)
                                .font(.system(size: 17))
                                .foregroundColor(.gray)
                                .frame(width: self.origin != "" ? screenWidth - 140 : screenWidth - 100)
                            
                            if self.origin != "" {
                                Button(action: {
                                    self.origin = ""
                                    self.hideKeyboard()
                                }) {
                                    Image(systemName: "xmark.circle.fill")
                                        .resizable()
                                        .frame(width: 20, height: 20).foregroundColor(.gray)
                                }
                            }
                        }
                        .background(RoundedRectangle(cornerRadius: 25)
                        .stroke(Color("Gray_YoYo"))
                        .frame(width: screenWidth - 60, height: 40))
                        
                        
                        HStack(spacing: 20){
                            TextField("¿Hasta dónde?", text: self.$destiny)
                                .font(.system(size: 17))
                                .foregroundColor(.gray)
                                .frame(width: self.destiny != "" ? screenWidth - 140 : screenWidth - 100)
                            
                            if self.destiny != "" {
                                Button(action: {
                                    self.destiny = ""
                                    self.hideKeyboard()
                                }) {
                                    Image(systemName: "xmark.circle.fill")
                                        .resizable()
                                        .frame(width: 20, height: 20).foregroundColor(.gray)
                                }
                            }
                        }
                        .background(RoundedRectangle(cornerRadius: 25)
                        .stroke(Color("Gray_YoYo"))
                        .frame(width: screenWidth - 60, height: 40)).animation(.spring())
                        
                    }
                    HStack (spacing: 10) {
                        Button(action: {
                            self.travelViewShow.toggle()
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 25)
                                    .foregroundColor(Color("Cell_Gray"))
                                    .frame(width: (screenWidth - 60) / 2  - 5, height: 40)
                                HStack (spacing: 10) {
                                    Image("Hogar")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 20,height: 20)
                                    Text("Hogar")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 17))
                                }
                            }
                        }
                        Button(action: {
                            self.travelViewShow.toggle()
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 25)
                                    .foregroundColor(Color("Cell_Gray"))
                                    .frame(width: (screenWidth - 60) / 2 - 5, height: 40)
                                HStack (spacing: 10) {
                                    Image("Trabajo")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 20,height: 20)
                                    Text("Trabajo")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 17))
                                }
                            }
                        }
                    }
                    VStack (spacing: 15) {
                        HStack {
                            Text("Sugerencias")
                                .foregroundColor(.gray)
                                .font(.system(size: 17))
                            Spacer()
                        }.frame(width: screenWidth - 70)
                        ForEach (1..<4) { _ in
                            
                            HStack {
                                Image("Location")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 20, height: 30)
                                    .padding(.horizontal)
                                VStack (alignment:.leading) {
                                    Text("Sugerencia de localización")
                                        .font(.system(size: 15))
                                        .foregroundColor(.gray)
                                    Text("Dirección completa del lugar")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color("Gray_YoYo"))
                                }
                                Spacer(minLength: 0)
                            }
                        }
                    }.frame(width: screenWidth - 70)
                    Spacer()
                }
                .frame(width: screenWidth - 30, height: 400)
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }
            .frame(width: screenWidth - 30, height: 400)
            .cornerRadius(25)
        }.padding(.bottom)
    }
}


struct TravelView: View {
    @Binding var travelViewShow : Bool
    var body: some View {
        VStack (spacing: 30) {
            HStack {
                Button(action: {
                    self.travelViewShow.toggle()
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("Red_YoYo"))
                }
                Spacer()
                Button(action: {
                }) {
                    Image(systemName: "slider.horizontal.3")
                        .resizable()
                        .frame(width: 25, height: 27)
                        .foregroundColor(.gray).padding(.horizontal)
                }
                Button(action: {
                }) {
                    Image(systemName: "goforward")
                        .resizable()
                        .frame(width: 25, height: 27)
                        .foregroundColor(.gray)
                }
            }
            ZStack {
                HStack {
                    Image("Car")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 70, height: 40)
                        .padding(.horizontal, 30)
                    Spacer()
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 15, height: 25)
                        .foregroundColor(Color("Red_YoYo"))
                        .padding(.horizontal, 30)
                }
                Text("Autos")
                .foregroundColor(.gray)
                .font(.system(size: 20))
            }
            .background(RoundedRectangle(cornerRadius: 10)
            .frame(width: screenWidth - 70, height: 50)
            .foregroundColor(Color("Gray_YoYo")))
            
            ZStack {
                HStack {
                    Image("Bike")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 60, height: 38)
                        .padding(.horizontal, 30)
                    Spacer()
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 15, height: 25)
                        .foregroundColor(Color("Red_YoYo"))
                        .padding(.horizontal, 30)
                }
                Text("Bicicletas")
                .foregroundColor(.gray)
                .font(.system(size: 20))
            }
            .background(RoundedRectangle(cornerRadius: 10)
            .frame(width: screenWidth - 70, height: 50)
            .foregroundColor(Color("Gray_YoYo")))
            
            ZStack {
                HStack {
                    Image("Scooter")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.horizontal, 30)
                    Spacer()
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 15, height: 25)
                        .foregroundColor(Color("Red_YoYo"))
                        .padding(.horizontal, 30)
                }
                Text("Scooters")
                .foregroundColor(.gray)
                .font(.system(size: 20))
            }
            .background(RoundedRectangle(cornerRadius: 10)
            .frame(width: screenWidth - 70, height: 50)
            .foregroundColor(Color("Gray_YoYo")))
            Spacer()
            
        }
        .frame(width: screenWidth - 70, height: 350)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct TravelMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TravelMenuView().previewLayout(.sizeThatFits)
    }
}

// Hide Keyboard
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

