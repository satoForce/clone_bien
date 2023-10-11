//
//  MainTabBar.swift
//  Well
//
//  Created by well on 6/10/23.
//

import SwiftUI

struct MainTabBar: View {
    @State private var selectedTab = 0
    var body: some View {

                
                TabView(selection: $selectedTab) {
                    // Vista de inicio (por defecto)
                    
                    NavigationView {
                        ContentView()
                        Spacer()
                    }
                    .tag(0)
                    .tabItem {
                        Image(systemName: "house")
                        Text("Búsqueda")
                    }
                    
                    // Vista de Inicio
                    NavigationView {
                        
                        JourneysTab()
                            .navigationBarBackButtonHidden(true) // Oculta el botón de retroceso
                            .navigationTitle("Journeys")
                        Spacer()
                    }
                    .tag(1)
                    .tabItem {
                        Image(systemName: "circle")
                        Text("Journeys")
                    }
                    
                    //Vista search
                    NavigationView {
                        AskWellTab()
                            // Oculta el botón de retroceso
                            .navigationTitle("ASK WELL")
                    }
                    .tag(2)
                    .tabItem {
                        Text("ASK WELL") // Título personalizado en la pestaña
                        Image(systemName: "plus.square")
                    }

                    
                    //Vista Post
                    NavigationView {
                        
                        Spacer()
                    }
                    .tag(3)
                    .tabItem {
                        Image(systemName: "play.square.stack")
                        Text("Búsqueda")
                    }
                    
                    //Vista rels
                    NavigationView {
                        
                        Spacer()
                    }
                    .tag(4)
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                        Text("Búsqueda")
                    }
                    
                }.onAppear {
                    UITabBar.appearance().barTintColor = UIColor.systemBackground
                    
                }
                
        }
    
}

#Preview {
    MainTabBar()
}
