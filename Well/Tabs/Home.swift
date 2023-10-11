//
//  ContentView.swift
//  Well
//
//  Created by well on 6/10/23.

import SwiftUI


struct Home: View {
    
    
    var body: some View {
        
        headerView()
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack {
                firstPart()
                //Important()
                partTwo()
                Carousel()
                parThree()
                finalPart()
            }
        }
    }
    
    
    
    
    func Important() -> some View{
            ZStack (alignment: .leading){
                Color.white
                    .frame(height: 150)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                VStack (alignment: .leading){
                    Spacer()
                    ZStack {
                        Text("Hola")
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Check-ins")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                    
                    Text("Track yours progress, gain insights, and build habits to last")
                        .foregroundColor(Color.white)
                        .font(.system(size: 16, design: .rounded))
                    Spacer()
                }.padding()
            }
            .padding()
        }
    
    
    
    
    
    
    func firstPart() -> some View{
        return VStack{
            Text("Good to see you, Sergio 2 👋")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundColor(Color(UIColor.blue))
        }.padding()
    }
    
    
    func partTwo() -> some View{
        ZStack (alignment: .leading){
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(maxHeight: .infinity)
                .cornerRadius(10)
                .shadow(radius: 5)
            VStack (alignment: .leading){
                Spacer()
                
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.black.opacity(0.3))
                        .frame(maxWidth: .infinity, alignment: .leading) // Alinea a la izquierda y ajusta el ancho
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
                }
                Spacer()
                Spacer()
                Spacer()
                Text("Check-ins")
                    .foregroundColor(Color.white) // Color celeste
                    .font(Font.title)
                    
                    
                
                Text("Track yours progress, gain insights, and build habits to last")
                    .foregroundColor(Color.white) // Color blanco
                    .font(.body) // Fuente redonda
                Spacer()
            }.padding()
        }
        .padding()
    }
    
    func parThree() -> some View {
        VStack (alignment: .leading){
            Text("HEALTH CHECKLIST")
                .font(.title3.bold())
                .padding()
            
            ZStack (alignment: .leading){
                Rectangle()
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity) // Ajusta al contenido
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
                
                VStack (alignment: .leading, spacing: 20){
                    HStack {
                        Text("Breast cancer")
                            .font(.headline)
                            .foregroundColor(.black)
                        Spacer()
                        Text("0")
                            .foregroundColor(.black)
                    }
                    HStack {
                        Text("Cervical Cancer")
                            .font(.headline)
                            .foregroundColor(.black)
                        Spacer()
                        Text("0")
                            .foregroundColor(.black)
                    }
                    HStack {
                        Text("Flu shot")
                            .font(.headline)
                            .foregroundColor(.black)
                        Spacer()
                        Text("0")
                            .foregroundColor(.black)
                    }
                }
                .padding()
            }
            .padding()
        }
    }

    
    func finalPart() -> some View{
        
        return ZStack (alignment: .leading){
            Color.white // Fondo blanco
                .frame(maxWidth: .infinity, maxHeight: .infinity)
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

}


#Preview {
    Home()
}
        
