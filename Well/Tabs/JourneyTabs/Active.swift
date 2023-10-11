//
//  Active.swift
//  Well
//
//  Created by Fabrizio on 9/10/23.
//

import SwiftUI

struct Active: View {
    var body: some View {
        
        VStack (alignment: .leading){
                        
            ScrollView {
                  ForEach(0..<8) { _ in
                      ZStack(alignment: .leading) {
                          Color.white
                              .frame(height: 120)
                              .cornerRadius(0)
                              .shadow(radius: 5)
                          
                          VStack(alignment: .leading, spacing: 20) {
                              HStack {
                                  VStack {
                                      Image(systemName: "person.circle.fill")
                                          .font(.system(size: 60))
                                  }
                                  
                                  VStack(alignment: .leading) {
                                      Text("TituloPrincipal")
                                          .font(.headline)
                                          .foregroundColor(.black)
                                      
                                      Text("texto complementario")
                                          .foregroundColor(.black)
                                      
                                      Rectangle()
                                          .foregroundColor(Color.black.opacity(0.2))
                                          .frame(width: 110, height: 30) // Tamaño del cuadro amarillo
                                          .cornerRadius(10)
                                          .overlay(
                                              HStack {
                                                  Image(systemName: "circle.fill")
                                                      .foregroundColor(Color.yellow)
                                                      .font(Font.system(size: 15)) // Ajusta el tamaño de la fuente
                                                  
                                                  Text("10 per day")
                                                      .foregroundColor(.black) // Texto blanco
                                                      .font(Font.system(size: 15)) // Ajusta el tamaño de la fuente
                                              }
                                          )
                                  }
                                  Spacer()
                                  VStack {
                                      Text(">").font(.system(size: 25))
                                  }
                              }
                          }
                          .padding()
                      }
                      .padding(.horizontal)
                      .padding(.vertical,4)
                  }
              }
            }
    }
}

#Preview {
    Active()
}
