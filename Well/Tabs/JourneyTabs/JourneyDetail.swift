//
//  JourneyDetail.swift
//  Well
//
//  Created by Fabrizio on 9/10/23.
//

import SwiftUI

struct JourneyDetail: View {
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                // Apartado 1: Imagen que ocupa todo el ancho
                Image("imagen1")
                    .resizable()
                    .frame(width: .infinity)
                    .scaledToFit()
                    .overlay(
                        VStack( spacing: 20) {
                            Spacer()
                            Rectangle()
                                .foregroundColor(Color.black.opacity(0.3))
                                .frame(width: 110, height: 30) // Tamaño del cuadro amarillo
                                .cornerRadius(10)
                                .overlay(
                                    HStack {
                                        Image(systemName: "circle.fill")
                                            .foregroundColor(Color.yellow)
                                            .font(Font.system(size: 15)) // Ajusta el tamaño de la fuente
                                        
                                        Text("10 per day")
                                            .foregroundColor(.white) // Texto blanco
                                            .font(Font.system(size: 15)) // Ajusta el tamaño de la fuente
                                    }
                                )
                            Text("Check-ins")
                                .foregroundColor(Color.white)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                            Text("Track your progress, gain insights, and build lasting habits")
                                .foregroundColor(Color.white)
                                .font(.system(size: 18, design: .rounded))
                            Button(action: {
                                // Acción que se ejecutará al presionar el botón
                            }) {
                                Text("Get Started")
                                    .foregroundColor(Color.blue)
                                    .font(.system(size: 16))
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(20) // Agrega patas redondas al botón
                            }
                        }
                        .padding()
                        .padding(.vertical, 15)
                        .alignmentGuide(.bottom) { d in d[VerticalAlignment.center] }
                    )
                  

                VStack(spacing: 0) {
                    HStack(spacing: 10) {
                        VStack {
                            Text("Time")
                            Image(systemName: "house.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("3 to 5min")
                        }
                        Spacer()
                        Divider()
                        Spacer()
                        VStack {
                            Text("frecuenly")
                            Image(systemName: "car.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Daily")
                        }
                    }
                    .padding()
                    Spacer()
                    Divider()
                    Spacer()
                    
                    HStack(spacing: 10) {
                        VStack {
                            Text("Duration")
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("7 days")
                        }
                        Spacer()
                        Divider()
                        Spacer()
                        VStack {
                            Text("Category")
                            Image(systemName: "leaf.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("prevent")
                        }
                    }.padding()
                    
                }.padding(45)

                
                // Apartado 2: Texto
                VStack {
                    VStack (alignment: .leading){
                        Text("What you will focus on")
                            .font(.headline)
                        //.fontWeight(.bold)
                            .font(.system(size: 10))
                        
                        Text("staying well during cold and flu season, You will learn healthy habits to protect both yourself and others")
                            .font(.body)
                            .foregroundColor(.gray)
                            .font(.system(size: 10))
                    }.padding()
                    
                    
                    
                    
                    // Apartado 3: Línea divisoria
                    Divider()
                    VStack (alignment: .leading){
                        Text("Why practice cold, flu, and COVID prevention?")
                            .font(.headline)
                        //.fontWeight(.bold)
                            .font(.system(size: 10))
                        
                        Text("staying well during cold and flu season, You will learn healthy habits to protect both yourself and othersstaying well during cold and flu season, You will learn healthy habits to protect both yourself and others")
                            .font(.body)
                            .foregroundColor(.gray)
                            .font(.system(size: 10))
                    }.padding()
                    
                    // Apartado 4: Texto
                    Divider()
                    VStack (alignment: .leading){
                        Text("Reward opportunities")
                            .font(.headline)
                        //.fontWeight(.bold)
                            .font(.system(size: 10))
                        
                        Text("staying well during cold and flu season, You will learn healthy habits to protect both yourself and others")
                            .font(.body)
                            .foregroundColor(.gray)
                            .font(.system(size: 10))
                    }.padding()
            
                    Divider()
                    VStack (alignment: .leading){
                        Text("Learn more, earn more")
                            .font(.headline)
                        //.fontWeight(.bold)
                            .font(.system(size: 10))
                        
                        Text("staying well during cold and flu season, You will learn healthy habits to protect both yourself and others")
                            .font(.body)
                            .foregroundColor(.gray)
                            .font(.system(size: 10))
                    }.padding()
                    
                    // Apartado 8: Botones centrados
                    VStack {
                        Button(action: {
                            // Acción para el primer botón
                        }) {
                            Text("Get Started")
                                .padding()
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(100) // Añade esquinas redondas

                        Button(action: {
                            // Acción para el segundo botón
                        }) {
                            Text("Remove")
                                .padding()
                                .foregroundColor(.blue)
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(100) // Añade esquinas redondas
                    }
                    .padding()


                }.padding()
                
            }
        }
    }
}

#Preview {
    JourneyDetail()
}
