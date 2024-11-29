//
//  SwiftUIView.swift
//  TradingCards
//
//  Created by Ahmet Kaan Caliskan on 2024-11-28.
//

import SwiftUI

struct SwiftUIView: View {
    let providedPlayerCard: PlayerCard
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            HStack { //Player Name Top Title
                ZStack{
                    HStack{
                        namePlate()
                    }.foregroundColor(.white)
                    Text(providedPlayerCard.playerName)
                }
                    .font(.system(size: 36, weight: .bold))
            } .frame(height: 50)
            
            Spacer()
            
            HStack { //Image and etc.
                ZStack{
                    Image(providedPlayerCard.playerImage)
                        .resizable()
                        .scaledToFit()
                    HStack{
                        Image(providedPlayerCard.playerTeamLogoImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .offset(x: 130, y: 200)
                        
                    }
                    .padding(15)
                } .border(Color.black , width: 15)
            }.frame(height: 500)
                .padding(.top, -150)
            
            
            
            HStack { //Stats
                VStack{
                    Text("Season Stats:")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                    
                    Text("\(String(format: "%.1f", providedPlayerCard.pointsPerGame)) PPG")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold))
                    Text("\(String(format: "%.1f", providedPlayerCard.reboundsPerGame)) RPG")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold))
                    Text("\(String(format: "%.1f", providedPlayerCard.assistsPerGame)) APG")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold))
                    Text("\(String(format: "%.1f", providedPlayerCard.fieldGoalPercentage))% FG")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold))
                }.padding(20)
                Spacer()
                VStack{
                    Text(providedPlayerCard.playerPosition)
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                    Text("#\(providedPlayerCard.playerJerseyNumber)")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                    Text(providedPlayerCard.playerHeight)
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                    Text("\(providedPlayerCard.playerWeight)lbs")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                    Text("\(providedPlayerCard.playerAge)")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                }.padding(45)
                
                
            }.padding(.top, 0)
                .background(ZStack {
                    Image("StatsBackground")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(width: 200, height: 210)
                        .offset(x: -28, y: 0)
                    
                })
        }
        .background(ZStack {
            Image("backgroundImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        })
        
        
        
    }
}
