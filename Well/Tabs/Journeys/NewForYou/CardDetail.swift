//
//  JourneyDetail.swift
//  Well
//
//  Created by Fabrizio on 9/10/23.
//

import SwiftUI

struct CardDetail: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Image("imagen1")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(
                        VStack(alignment: .leading, spacing: 20) {
                            Spacer()
                            VStack(alignment: .leading, spacing: 20) {
                                ZStack {
                                    HStack {
                                        Image(systemName: "circle.fill")
                                            .foregroundColor(Color.yellow)
                                            .font(.body)
                                        Text("10 per day")
                                            .foregroundColor(.white)
                                            .font(.body)
                                    }
                                    .padding(7)
                                    .font(.body)
                                }
                                .background(Color.black.opacity(0.3))
                                .cornerRadius(10)
                               
                                Text("Check-ins")
                                    .foregroundColor(Color.white)
                                    .font(.title.bold())
                                Text("Track your progress, gain insights, and build lasting habits")
                                    .foregroundColor(Color.white)
                                    .font(.body)
                                Button(action: {
                                }) {
                                    Text("Get Started")
                                        .foregroundColor(Color.blue)
                                        .font(.system(size: 16))
                                        .padding()
                                        .background(Color.white)
                                        .cornerRadius(20)
                                }
                            }
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(40)
                        }//.background(Color.random)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    )
                
                LazyVGrid(columns: [
                    GridItem(.flexible(minimum: 100), spacing: 25),
                    GridItem(.flexible(minimum: 100), spacing: 25)
                ]) {
                    ForEach(0..<4) { _ in
                        VStack {
                            Text("Time")
                                .foregroundColor(Color.black)
                                .font(.body.bold())
                            Image(systemName: "house.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity)
                                .cornerRadius(10)
                            Text("3 to 5min")
                                .foregroundColor(Color.gray)
                                .font(.body.bold())
                        }
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                        .padding(20)
                    }
                }.padding(40)



                /*VStack(spacing: 0) {
                    HStack(spacing: 10) {
                        VStack {
                            Text("Time")
                                .foregroundColor(Color.black)
                                .font(.body.bold())
                            GeometryReader { geometry in
                                Image(systemName: "house.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Ajusta la imagen al tamaño disponible
                                    .frame(width: geometry.size.width, height: geometry.size.width) // Utiliza el ancho como el alto para que sea cuadrada
                            }
                            Text("3 to 5min")
                                .foregroundColor(Color.gray)
                                .font(.body.bold())
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
                }.padding(45)*/
                VStack {
                    VStack (alignment: .leading){
                        Text("What you will focus on")
                            .foregroundColor(Color.black)
                            .font(.headline.bold())
                        Text("staying well during cold and flu season, You will learn healthy habits to protect both yourself and others")
                            .font(.body)
                            .foregroundColor(.gray)
                            
                    }.padding()
                    Divider()
                    VStack (alignment: .leading){
                        Text("Why practice cold, flu, and COVID prevention?")
                            .foregroundColor(Color.black)
                            .font(.headline.bold())
                        Text("staying well during cold and flu season, You will learn healthy habits to protect both yourself and othersstaying well during cold and flu season, You will learn healthy habits to protect both yourself and others")
                            .font(.body)
                            .foregroundColor(.gray)
                         
                    }.padding()
                    Divider()
                    VStack (alignment: .leading){
                        Text("Reward opportunities")
                            .foregroundColor(Color.black)
                            .font(.headline.bold())
                        Text("staying well during cold and flu season, You will learn healthy habits to protect both yourself and others")
                            .font(.body)
                            .foregroundColor(.gray)
                        
                    }.padding()
                    Divider()
                    VStack (alignment: .leading){
                        Text("Learn more, earn more")
                            .foregroundColor(Color.black)
                            .font(.headline.bold())
                        Text("staying well during cold and flu season, You will learn healthy habits to protect both yourself and others")
                            .font(.body)
                            .foregroundColor(.gray)
                            
                    }.padding()
                    VStack {
                        Button(action: {
                        }) {
                            Text("Get Started")
                                .font(.headline.bold())
                                .padding()
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(100)
                        Button(action: {
                        }) {
                            Text("Remove")
                                .font(.headline.bold())
                                .padding()
                                .foregroundColor(.blue)
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(100)
                    }
                    .padding()
                }.padding()
            }
        }
    }
}

#Preview {
    CardDetail()
}
