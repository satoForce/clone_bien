//
//  SwiftUIView.swift
//  Well
//
//  Created by Fabrizio on 13/10/23.
//

import SwiftUI

struct YouTab: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Image(systemName: "person.circle")
                        .font(.system(size: 50))
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack{
                        Text("Nombre de Usuario")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        NavigationLink("Profile >", destination: Profile()).font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .navigationBarTitle("", displayMode: .inline)
                    }
                }
                NavigationLink(destination: YouTab()) {
                    HStack {
                        Image(systemName: "gearshape")
                            .font(.system(size: 50))
                            .foregroundColor(.green)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Settings")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                NavigationLink(destination: YouTab()) {
                    HStack {
                        Image(systemName: "shared.with.you")
                            .font(.system(size: 50))
                            .foregroundColor(.green)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Share Well")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                NavigationLink(destination: YouTab()) {
                    HStack {
                        Image(systemName: "ellipsis.bubble.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.green)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Feedback")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                NavigationLink(destination: YouTab()) {
                    HStack {
                        Image(systemName: "questionmark.circle")
                            .font(.system(size: 50))
                            .foregroundColor(.green)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Help")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                NavigationLink(destination: YouTab()) {
                    HStack {
                        Image(systemName: "figure.australian.football")
                            .font(.system(size: 50))
                            .foregroundColor(.green)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Sign out")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                NavigationLink(destination: YouTab()) {
                    HStack {
                        Image(systemName: "ant")
                            .font(.system(size: 50))
                            .foregroundColor(.green)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Debug Menu")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
            .padding(30)
        }
    }
}
struct YouTab_Previews: PreviewProvider {
    static var previews: some View {
        YouTab()
    }
}


