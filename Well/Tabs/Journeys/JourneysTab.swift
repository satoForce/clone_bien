//
//  JourneysTab.swift
//  Well
//
//  Created by Fabrizio on 9/10/23.
//


var tabs = ["New for you","Active","Past"]

import SwiftUI

struct JourneysTab: View {
    @State private var selectedTab = 0
    private let tabCount = 3
    var body: some View {
        NavigationView {
            VStack(alignment: .leading,spacing: 0) {
                HStack(spacing: 20) {
                    ForEach(0..<tabCount, id: \.self) { index in
                        Button(action: {
                            self.selectedTab = index
                        }) {
                            Text("\(tabs[index])")
                                .font(.headline)
                                .padding(.vertical, 10)
                                .foregroundColor(selectedTab == index ? .blue : .black)
                        }
                    }
                }
                Divider().background(Color.black)
                GeometryReader { geometry in
                    Rectangle()
                        .frame(width: (geometry.size.width / 2) / CGFloat(tabCount) , height: 2)
                        .foregroundColor(.blue)
                        .offset(x: CGFloat(selectedTab) * (geometry.size.width / 2) / CGFloat(tabCount))
                    if selectedTab == 0 {
                        NewForYou()
                    } else if selectedTab == 1 {
                        Active()
                    } else {
                        Past()
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    JourneysTab()
}
