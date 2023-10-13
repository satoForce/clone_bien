//
//  TextMessageView.swift
//  Well
//
//  Created by well on 6/10/23.
//

import SwiftUI

struct TextMessageView: View {
    var text: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(text)
                .padding(8)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 1)
        }
    }
}

struct TextMessague_Previews: PreviewProvider {
    static var previews: some View {
        TextMessageView(text: "Hola, ¿cómo estás?")
    }
}
