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
            //HOME
            NavigationView {
                Home()
                Spacer()
            }
            .tag(0)
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            // JOURNEYS
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
            //ASK WELL
            NavigationView {
                AskWellTab()
                    // Oculta el botón de retroceso
                    .navigationTitle("ASK WELL")
            }
            .tag(2)
            .tabItem {
                Text("AskWell") // Título personalizado en la pestaña
                Image(systemName: "plus.square")
            }
            //REWARDS
            NavigationView {
                
                Spacer()
            }
            .tag(3)
            .tabItem {
                Image(systemName: "play.square.stack")
                Text("Rewards")
            }
            //YOU
            NavigationView {
                
                Spacer()
            }
            .tag(4)
            .tabItem {
                Image(systemName: "person.circle.fill")
                Text("You")
            }
        }.onAppear {
            UITabBar.appearance().barTintColor = UIColor.systemBackground
        }
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
