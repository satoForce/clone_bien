//
//  View2.swift
//  Well
//
//  Created by well on 6/10/23.
//

import SwiftUI

struct CarouselHome: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("NEW FOR YOU")
                .font(.title3.bold())
                .padding()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0..<5) { index in
                        ZStack {
                                VStack {
                                    Image("foto1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 200, height: 75)
                                        .cornerRadius(10)
                                    VStack(alignment: .leading, spacing: 2) {
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
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                            
                        }.frame(width: UIScreen.main.bounds.width / 2)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    CarouselHome()
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
