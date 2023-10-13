//
//  NewForYoy.swift
//  Well
//
//  Created by Fabrizio on 9/10/23.
//

import SwiftUI

struct NewForYou: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                    VStack {
                        Carousel5()
                        Spacer()
                        ForEach(0..<4) { index in
                            VStack {
                                ZStack {
                                    VStack(alignment: .leading) {
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
                                        Spacer()
                                        Spacer()
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
                                    .background(Color.random) // Cambia el color aquí
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                                }
                                .padding(.vertical,10)
                                .frame(width: UIScreen.main.bounds.width / 1.2)
                            //.frame(height: UIScreen.main.bounds.width / 1.3)
                            }
                        }
     
                    }//.padding(30)
            }
        }
    }
}


struct NewForYou_Previews: PreviewProvider {
    static var previews: some View {
        NewForYou()
    }
}
