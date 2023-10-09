//
//  newView.swift
//  Well
//
//  Created by well on 6/10/23.
//

import SwiftUI

struct newView: View {
    @State private var messageText = ""
    
    var body: some View {
        VStack {
            // Barra de navegación
            HStack {
                Button(action: {
                    // Acción para abrir la cámara
                    // Puedes implementar la lógica para abrir la cámara aquí
                }) {
                    Image(systemName: "camera.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                }
                
                Spacer()
                
                Text("Ask WELL") // Nombre del amigo o grupo de chat
                    .font(.headline)
                
                Spacer()
                
               /* Button(action: {
                    // Acción para mostrar opciones del chat (por ejemplo, configuración)
                }) {
                    Image(systemName: "ellipsis")
                        .font(.title)
                        .foregroundColor(.blue)
                }*/
            }
            .padding()
            .background(Color.white)
            .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 1)
            
            // Lista de mensajes
            List {
                // Mensajes del chat
                TextMessageView(text: "Hi")
                TextMessageView(text: "hi, que tal?")
                // Agrega más mensajes según sea necesario
            }
            
            // Espacio para escribir mensajes
            HStack {
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

#Preview {
    newView()
}
