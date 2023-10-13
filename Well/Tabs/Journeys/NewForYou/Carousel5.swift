//
//  Carousel5.swift
//  Well
//
//  Created by Fabrizio on 9/10/23.
//

import SwiftUI


extension Color {
    static var random: Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        return Color(red: red, green: green, blue: blue)
    }
}
struct Carousel5: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0..<5) { index in
                    NavigationLink(destination: CardDetail()) {
                        ZStack {
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
                                .padding(20)
                                Spacer()
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("Title")
                                        .foregroundColor(Color.black)
                                        .font(.title2)

                                    Text("Texto largo que va como complemento del subtitulo.")
                                        .foregroundColor(Color.black)
                                        .font(.body)
                                }
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .padding(20)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.random) // Cambia el color aquí
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        }
                        .frame(width: UIScreen.main.bounds.width / 1.2)
                    }
                    //.frame(height: UIScreen.main.bounds.width / 1.3)
                }
            }
            .padding(30)
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
