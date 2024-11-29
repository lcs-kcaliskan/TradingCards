//
//  ContentView.swift
//  TradingCards
//
//  Created by Ahmet Kaan Caliskan on 2024-11-12.
//

import SwiftUI



struct PlayersTabView: View {
    let players = [jaylenBrown, jaysonTatum, jrueHoliday]
    
    var body: some View {
        TabView {
            ForEach(players){ currentPlayer in
                SwiftUIView(providedPlayerCard: currentPlayer)
            }
        }
        .ignoresSafeArea()
        .tabViewStyle(.page(indexDisplayMode: .never))
        .persistentSystemOverlays(.hidden)
    }
}
 
#Preview {
    PlayersTabView()
}
