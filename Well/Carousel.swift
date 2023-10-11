//
//  View2.swift
//  Well
//
//  Created by well on 6/10/23.
//

import SwiftUI

struct Carousel: View {
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Text("NEW FOR YOU")
                    .font(Font.system(size: 18, weight: .bold, design: .rounded))
                    .padding()

                
                // VIEW 2
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack(spacing: 20) {
                        ForEach(0..<5) { index in
                            ZStack(alignment: .leading) {
                                Rectangle()
                                    .foregroundColor(Color.white)
                                    .frame(width: 200, height: 190)
                                    .cornerRadius(10) // Bordes circulares
                                    .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
                                    .overlay(
                                        VStack {
                                            Image("foto1") // Reemplaza "foto1" con el nombre de tu imagen
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 200, height: 75)
                                                .cornerRadius(10)
                                                //.offset(y: -60)
                                            
                                            
                                            VStack(alignment: .leading, spacing: 2) {
                                                
                                                Text("Title")
                                                    .foregroundColor(Color.black)
                                                    .font(.title2)
                                                
                                                Text("Texto largo que va como complemento del subtitulo.")
                                                    .foregroundColor(Color.black)
                                                    .font(.body)
                                                    .multilineTextAlignment(.leading) // Alinea el texto a la izquierda
                                                // Permite múltiples líneas
                                            }
                                            .frame(width: 160)
                                            .padding()
                                            //.offset(y: 30)
                                        }
                                    )
                                
       
                            }
                            
                            // Sombreado
                        }
                    }
                    .padding()
                }
            }
        }

        

    }
}

#Preview {
    Carousel()
}


/*
 HStack{
     VStack (alignment: .leading){
         Text("NEW FOR YOU").padding()
         //VIEW 2
         ScrollView(.horizontal, showsIndicators: true) {
             HStack(spacing: 20) {
                 ForEach(0..<5) { index in
                     RoundedRectangle(cornerRadius: 10)
                         .foregroundColor(Color.blue)
                         .frame(width: 200, height: 150) // Tamaño del cuadro
                         .overlay(
                             Text("Cuadro \(index + 1)")
                                 .foregroundColor(Color.white)
                                 .font(.headline)
                         )
                 }
             }
             .padding()
         }
     }
 }*/
