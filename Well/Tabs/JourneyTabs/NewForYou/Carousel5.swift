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
                    ZStack {
                        Color.random
                        VStack (alignment: .leading){
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

                    }.frame(width: UIScreen.main.bounds.width / 1.2)
                        .frame(height: UIScreen.main.bounds.width / 1.3)
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    Carousel5()
}
