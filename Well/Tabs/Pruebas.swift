//
//  Pruebas.swift
//  Well
//
//  Created by Fabrizio on 11/10/23.
//

import SwiftUI

struct Pruebas: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    func parThree() -> some View {
        
            VStack (alignment: .leading){
                Text("HEALTH CHECKLIST")
                    .font(Font.system(size: 18, weight: .bold, design: .rounded))
                    .padding()
                
                ZStack (alignment: .leading){
                    
                    Color.white // Fondo blanco
                        .frame(height: 150)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    
                    VStack (alignment: .leading, spacing: 20){
                        HStack {
                            Text("Breast cancer")
                                .font(.headline)
                                .foregroundColor(.black ) // Texto negro
                            Spacer()
                            Text("0")
                                .foregroundColor(.black) // Texto negro
                        }
                        HStack {
                            Text("Cervical Cancer")
                                .font(.headline)
                                .foregroundColor(.black) // Texto negro
                            Spacer()
                            Text("0")
                                .foregroundColor(.black) // Texto negro
                        }
                        HStack {
                            Text("Flu shot")
                                .font(.headline)
                                .foregroundColor(.black) // Texto negro
                            Spacer()
                            Text("0")
                                .foregroundColor(.black) // Texto negro
                        }
                    }
                    .padding()
                }
                .padding()
            }
        
    }
    func Important() -> some View{
            ZStack (alignment: .leading){
                Color.white
                    .frame(height: 150)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                VStack (alignment: .leading){
                    Spacer()
                    ZStack {
                        Text("Hola")
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Check-ins")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                    
                    Text("Track yours progress, gain insights, and build habits to last")
                        .foregroundColor(Color.white)
                        .font(.system(size: 16, design: .rounded))
                    Spacer()
                }.padding()
            }
            .padding()
        }
}

#Preview {
    Pruebas()
}
