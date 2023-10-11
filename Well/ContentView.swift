//
//  ContentView.swift
//  Well
//
//  Created by well on 6/10/23.

import SwiftUI


struct ContentView: View {
    
    
    var body: some View {
        
        headerView()
        
        ScrollView(.vertical, showsIndicators: false) {
            
            firstPart()
            partTwo()
            Carousel()
            parThree()
            finalPart()

        }
        
  
    }
    
    func firstPart() -> some View{
        return VStack{
            Text("Good to see you, Sergio 2 👋")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundColor(Color(UIColor.blue))
        }.padding()
    }
    
    func finalPart() -> some View{
        
        return ZStack (alignment: .leading){
            Color.white // Fondo blanco
                .frame(height: 180)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            VStack (alignment: .leading, spacing: 20){
                HStack {
                    NavigationLink(destination: AskWellTab()) {
                        HStack {
                            Text("Elemento 1")
                            Spacer()
                            Text(">")
                        }
                    }
                }
                HStack {
                    NavigationLink(destination: AskWellTab()) {
                        HStack {
                            Text("Elemento 1")
                            Spacer()
                            Text(">")
                        }
                    }
                }
                HStack {
                    NavigationLink(destination: AskWellTab()) {
                        HStack {
                            Text("Elemento 1")
                            Spacer()
                            Text(">")
                        }
                    }
                }
                
                HStack {
                    NavigationLink(destination: AskWellTab()) {
                        HStack {
                            Text("Elemento 1")
                            Spacer()
                            Text(">")
                        }
                    }
                }
            }
            .padding()
        }
        .padding()
    }
    func parThree() -> some View {
        
        VStack (alignment: .leading){
            Text("HEALTH CHECKLIST")
                .font(Font.system(size: 18, weight: .bold, design: .rounded))
                .padding()
                
            ZStack (alignment: .leading){
                
                Color.white // Fondo blanco
                    .frame(height: 150)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
                VStack (alignment: .leading, spacing: 20){
                    HStack {
                        Text("Breast cancer")
                            .font(.headline)
                            .foregroundColor(.black) // Texto negro
                        Spacer()
                        Text("0")
                            .foregroundColor(.black) // Texto negro
                    }
                    HStack {
                        Text("Cervical Cancer")
                            .font(.headline)
                            .foregroundColor(.black) // Texto negro
                        Spacer()
                        Text("0")
                            .foregroundColor(.black) // Texto negro
                    }
                    HStack {
                        Text("Flu shot")
                            .font(.headline)
                            .foregroundColor(.black) // Texto negro
                        Spacer()
                        Text("0")
                            .foregroundColor(.black) // Texto negro
                    }
                }
                .padding()
            }
            .padding()
        }
    }
    
    
    
    func headerView() -> some View{
        VStack (alignment: .leading){
            //Encabezado
            HStack {
                Text("Well")
                    .foregroundColor(Color.blue)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                
                Spacer()
                
                Image(systemName: "circle.fill")
                    .foregroundColor(Color.yellow) // Establece el color amarillo
                    .font(.system(size: 24)) // Establece el tamaño del icono
            }
            .padding()
            
            

        }
        .padding()
    }
    
    
    func partTwo() -> some View{
        

        ZStack (alignment: .leading){
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(height: 150)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            VStack (alignment: .leading){
                Spacer()
                
                ZStack {
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
                }
                Spacer()
                Spacer()
                Spacer()
                
                Text("Check-ins")
                    .foregroundColor(Color.white) // Color celeste
                    .font(.system(size: 18, weight: .bold, design: .rounded)) // Fuente redonda y negrita
                
                Text("Track yours progress, gain insights, and build habits to last")
                    .foregroundColor(Color.white) // Color blanco
                    .font(.system(size: 16, design: .rounded)) // Fuente redonda
                Spacer()
                
                
                
            }.padding()
        }
        .padding()
        
        
    }
}


#Preview {
    ContentView()
}
        
