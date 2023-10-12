//
//  Carousel5.swift
//  Well
//
//  Created by Fabrizio on 9/10/23.
//

import SwiftUI

struct Carousel5: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(spacing: 10) {
                ForEach(0..<5) { index in
                    NavigationLink(destination: CardDetail()) {
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 0.9 * UIScreen.main.bounds.width, height: 0.6 * UIScreen.main.bounds.height) // Ajusta el tamaño aquí
                                .cornerRadius(10)
                                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
                                .padding()
                            
                            VStack(alignment: .leading, spacing: 20) {
                                Rectangle()
                                    .foregroundColor(Color.black.opacity(0.3))
                                    .frame(height: 30) // Tamaño del cuadro amarillo
                                    .cornerRadius(10)
                                    .overlay(
                                        HStack {
                                            Image(systemName: "circle.fill")
                                                .foregroundColor(Color.yellow)
                                                .font(.body) // Ajusta el tamaño de la fuente
                                            
                                            Text("10 per day")
                                                .foregroundColor(.white) // Texto blanco
                                                .font(.body) // Ajusta el tamaño de la fuente
                                        }
                                    )
                                
                                VStack(alignment: .leading) {
                                    Text("Title")
                                        .foregroundColor(Color.white)
                                        .font(.headline)
                                    
                                    Text("Texto largo que va como complemento del subtitulo.")
                                        .foregroundColor(Color.white)
                                        .font(.subheadline)
                                        .multilineTextAlignment(.leading)
                                }
                            }
                            .frame(width: 0.7 * UIScreen.main.bounds.width) // Ajusta el tamaño aquí
                            .padding()
                            .offset(y: 0.2 * UIScreen.main.bounds.height)
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    Carousel5()
}



/*
 import SwiftUI

 struct Carousel5: View {
     var body: some View {
     
                 // VIEW 2
         ScrollView(.horizontal, showsIndicators: true) {
             HStack(spacing: 10) {
                 ForEach(0..<5) { index in
                     NavigationLink(destination: JourneyDetail()) {
                         ZStack(alignment: .leading) {
                             Rectangle()
                                 .fill(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                 .frame(width: 340, height: 300) // Ajusta el tamaño aquí
                                 .cornerRadius(10)
                                 .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
                                 .padding()

                             
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
                     }//.navigationTitle("Learn more")
                 }
             }
             
         }

             
         

     }
 }
 */
