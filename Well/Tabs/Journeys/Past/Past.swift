//
//  Past.swift
//  Well
//
//  Created by Fabrizio on 9/10/23.
//

import SwiftUI

struct Past: View {
    var body: some View {
        
        VStack (alignment: .leading){
                        
            ScrollView {
                  ForEach(0..<8) { _ in
                      ZStack(alignment: .leading) {
                          Color.white
                              .frame(maxWidth: .infinity)
                              .cornerRadius(0)
                              .shadow(radius: 5)
                          
                          VStack(alignment: .leading, spacing: 20) {
                              HStack {
                                  VStack {
                                      Image(systemName: "person.circle.fill")
                                          .font(.system(size: 50))
                                  }
                                  
                                  VStack(alignment: .leading) {
                                      Text("TituloPrincipal")
                                          .font(.headline)
                                          .foregroundColor(.black)
                                      
                                      Text("texto complementario")
                                          .foregroundColor(.black)
                                  }
                                  Spacer()
                                  VStack {
                                      Text(">").font(.headline)
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
    Past()
}
