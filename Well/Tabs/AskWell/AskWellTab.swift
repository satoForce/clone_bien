//
//  newView.swift
//  Well
//
//  Created by well on 6/10/23.
//

import SwiftUI

struct AskWellTab: View {
    @State private var messageText = ""
    
    var body: some View {
        VStack {
            // Lista de mensajes
            List {
                // Mensajes del chat
                TextMessageView(text: "Hi")
                TextMessageView(text: "hi, que tal?")
                // Agrega más mensajes según sea necesario
            }
            
            // Espacio para escribir mensajes
            HStack {
                Button(action: {
                    // Acción para abrir la cámara
                    // Puedes implementar la lógica para abrir la cámara aquí
                }) {
                    Image(systemName: "camera.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                }
                TextField("Escribe un mensaje", text: $messageText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    // Acción para enviar el mensaje
                    // Puedes implementar la lógica para enviar el mensaje aquí
                    if !messageText.isEmpty {
                        // Agregar el mensaje a la lista de mensajes
                        // Luego, borra el campo de texto
                        messageText = ""
                    }
                }) {
                    Image(systemName: "paperplane.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                }
            }
            .padding()
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

struct AskWell_Previews: PreviewProvider {
    static var previews: some View {
        AskWellTab()
    }
}
