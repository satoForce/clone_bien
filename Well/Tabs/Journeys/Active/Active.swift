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
                              .frame(maxWidth: .infinity)
                              .shadow(radius: 5)
                              HStack {
                                  Image(systemName: "person.circle.fill")
                                      .foregroundColor(.black)
                                  VStack(alignment: .leading) {
                                      Text("TituloPrincipal")
                                          .font(.headline)
                                          .foregroundColor(.black)
                                      Text("texto complementario")
                                          .foregroundColor(.black)
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
                                  }
                                  Spacer()
                                  Text(">").font(.title) // Ajusta el tamaño según el espacio disponible
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

struct Active_Previews: PreviewProvider {
    static var previews: some View {
        Active()
    }
}
