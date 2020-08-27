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
            // Top Items (Settings & Exit)
            HStack {
                Button(action: {
                    
                }) {
                    Image("settings")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("Orange_YoYo"))
                        .padding(.top)
                }
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
                        .padding(.top)
                }
                
            }.frame(width: screenWidth - 150)
            
            // SlideView Interface
            HStack {
                VStack {
                    Image("Profile_Pic")
                        .resizable()
                        .frame(width: 115, height: 115)
                        .cornerRadius(40)
                        .shadow(radius: 5, x: 5, y: 5)
                    Text("Hola, Usuario")
                        .foregroundColor(.gray)
                        .font(.system(size: 20))
                        .padding(.bottom, 25)
                    VStack(spacing: 20){
                        AhorroMensualView()
                        MisLugaresView()
//                        LugaresPrincipalesView()
                    }
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
        .background(Color("Background")
        .gesture(DragGesture().onChanged({ value in
            withAnimation {
                if value.translation.width > 0 {
                    if self.x > 0 {
                        self.x = 120 - screenWidth
                    }
                }
                else if self.x != -(120 - screenWidth){
                    self.x = value.translation.width
                }
            }
        }).onEnded({ value in
            withAnimation {
                if self.x > (100 - screenWidth) / 3 {
                    self.x = 0
                } else {
                    self.x = 120 - screenWidth
                }
            }
        })))
        .edgesIgnoringSafeArea(.all)
    }
}

struct AhorroMensualView: View {
    var body: some View {
        VStack(spacing: 5){
            HStack {
                Text("Ahorro Mensual")
                    .foregroundColor(.gray)
                    .font(.system(size: 18))
                Spacer()
            }
            .frame(width: screenWidth - 170)
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: screenWidth - 150, height: 70)
                    .foregroundColor(Color("Background"))
                    .shadow(radius: 5, x: -5, y: 5)
                Rectangle()
                    .frame(width: 1, height: 70)
                    .foregroundColor(Color("Gray_YoYo"))
                HStack(spacing: 45) {
                    VStack (spacing: 0) {
                        Text("$ 375.00")
                            .font(.system(size: 20))
                            .foregroundColor(Color("Green_YoYo"))
                        HStack {
                            Text("pesos")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .frame(width: screenWidth - 320, height: 20)
                        .padding(.top, 7)
                    }
                    VStack (spacing: 0) {
                        Text("1.76")
                            .font(.system(size: 20))
                            .foregroundColor(Color("Green_YoYo"))
                        HStack {
                            Text("horas")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .frame(width: screenWidth - 320, height: 20)
                        .padding(.top, 7)
                    }

                }
            }
        }
    }
}

struct MisLugaresView: View {
    var body: some View {
        VStack(spacing: 5){
            HStack {
                Text("Mis Lugares")
                    .foregroundColor(.gray)
                    .font(.system(size: 18))
                Spacer()
            }
            .frame(width: screenWidth - 170)
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: screenWidth - 150, height: 80)
                    .foregroundColor(Color("Background"))
                    .shadow(radius: 5, x: -5, y: 5)
            }
        }
    }
}

struct SlideView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct LugaresPrincipalesView: View {
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: screenWidth - 150, height: 40)
                    .foregroundColor(Color("Background"))
                    .shadow(radius: 5, x: -5, y: 5)
                HStack {
                    Image("Hogar")
                        .resizable()
                        .frame(width: 20 * 1.15, height: 20)
                    Spacer()
                    Text("Hogar").font(.system(size: 17)).foregroundColor(.gray)
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("Edit")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                }.frame(width: screenWidth - 180)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: screenWidth - 150, height: 40)
                    .foregroundColor(Color("Background"))
                    .shadow(radius: 5, x: -8, y: 5)
                HStack {
                    Image("Trabajo")
                        .resizable()
                        .frame(width: 20 * 1.15, height: 20)
                    Spacer()
                    Text("Trabajo").font(.system(size: 17)).foregroundColor(.gray)
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("Edit")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                }.frame(width: screenWidth - 180)
            }
        }
    }
}

struct AhorroMensualView_Previews: PreviewProvider {
    static var previews: some View {
        AhorroMensualView().previewLayout(.sizeThatFits)
    }
}

struct MisLugaresView_Previews: PreviewProvider {
    static var previews: some View {
        MisLugaresView().previewLayout(.sizeThatFits)
    }
}

struct LugaresPrincipalesView_Previews: PreviewProvider {
    static var previews: some View {
        LugaresPrincipalesView().previewLayout(.sizeThatFits)
    }
}
