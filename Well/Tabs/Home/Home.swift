//
//  ContentView.swift
//  Well
//
//  Created by well on 6/10/23.
import SwiftUI
struct Home: View {
    var body: some View {
        HeaderHome()
        ScrollView(.vertical, showsIndicators: false) {
            VStack {

                FirstPartHome()
                SecondPartHome()
                CarouselHome()
                parThree()
                finalPart()
            }
        }
    }
    func HeaderHome() -> some View{
        VStack (alignment: .leading){
            HStack {
                Text("Well")
                    .foregroundColor(Color.blue)
                    .font(Font.title.bold())
                    .fontDesign(.rounded)
                Spacer()
                Image(systemName: "circle.fill")
                    .foregroundColor(Color.yellow)
                    .font(.system(size: 24))
            }
        }
        .padding()
    }
    func FirstPartHome() -> some View{
        VStack{
            Text("Good to see you, Sergio 2 👋")
                .font(Font.title.bold())
                .fontDesign(.rounded)
                .foregroundColor(Color(UIColor.blue))
        }
    }
    func SecondPartHome() -> some View {
        ZStack (alignment: .leading) {
            GeometryReader { geometry in
                LinearGradient(gradient: Gradient(colors: [Color.blue,Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(maxHeight: geometry.size.height)
                    .cornerRadius(20)
            }
            VStack (alignment: .leading) {
                ZStack{
                    HStack {
                        Image(systemName: "circle.fill")
                            .foregroundColor(Color.yellow)
                        Text("10 per day")
                            .foregroundColor(Color.white)
                    }
                    .padding(7)
                    .font(.body)
                }
                .background(Color.black.opacity(0.3))
                .cornerRadius(10)
                Spacer()
                Spacer()
                Spacer()
                Text("Check-ins")
                    .foregroundColor(Color.white)
                    .font(Font.title)
                Text("Track your progress, gain insights, and build habits to last")
                    .foregroundColor(Color.white)
                    .font(.body)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(30)
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
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
