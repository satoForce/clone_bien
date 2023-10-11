//
//  NewForYoy.swift
//  Well
//
//  Created by Fabrizio on 9/10/23.
//

import SwiftUI

struct NewForYou: View {
    var body: some View {
        //NavigationView{
            ScrollView(.vertical) {
                VStack {
                    Carousel5()
                    Spacer()
                    ForEach(0..<4) { index in
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 340, height: 300) // Ajusta el tamaño aquí
                                .cornerRadius(10)
                                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
                                .padding(.vertical,13)
                            
                            
                            VStack(alignment: .leading, spacing: 40) {
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
                                
                                VStack (alignment: .leading){
                                    Text("Title")
                                        .foregroundColor(Color.white)
                                        .font(.headline)
                                    
                                    Text("Texto largo que va como complemento del subtitulo.")
                                        .foregroundColor(Color.white)
                                        .font(.subheadline)
                                        .multilineTextAlignment(.leading)
                                }
                                .padding(.vertical,30)
                                
                                
                            }
                            .frame(width: 240) // Ajusta el tamaño aquí
                            .padding()
                            .offset(y: 30)
                        }
                    }
                }
            }
        //}
    }
}

#Preview {
    NewForYou()
}
