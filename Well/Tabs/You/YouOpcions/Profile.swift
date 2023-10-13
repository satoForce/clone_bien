//
//  Profile.swift
//  Well
//
//  Created by Fasebas Pruebas on 13/10/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        GeometryReader { geometry in
            VStack (spacing: 30){
                HStack{
                    Spacer()
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: geometry.size.width / 4)) // Tamaño proporcional al ancho de la pantalla
                        .foregroundColor(.blue)
                    Spacer()
                }
                HStack{
                    Text("Account details")
                    Spacer()
                    Text(">")
                }
                .font(.headline)
                .foregroundColor(.cyan)
                
                HStack{
                    Text("Personal information")
                    Spacer()
                    Text(">")
                }
                .font(.headline)
                .foregroundColor(.cyan)
            }
            .padding(30)
        }
        .navigationBarTitle("Profile", displayMode: .inline).foregroundColor(.black)
    }
    
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
