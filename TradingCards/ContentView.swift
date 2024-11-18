//
//  ContentView.swift
//  TradingCards
//
//  Created by Ahmet Kaan Caliskan on 2024-11-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PlayerCard(playerName: "Jaylen Brown", playerImage: "JaylenBrown", playerTeamLogoImage: "CelticsLogo", pointsPerGame: 25.6, reboundsPerGame: 7.1, assistsPerGame: 4.0, fieldGoalPercentage: 43.0, playerPosition: "SG", playerJerseyNumber: 7, playerHeight: "6'6", playerWeight: 223, playerAge: 28)
        
    }
}
    #Preview {
        ContentView()
    }


    
    
    struct PlayerCard: View {
        let playerName: String
        let playerImage: String
        let playerTeamLogoImage: String
        let pointsPerGame: Double
        let reboundsPerGame: Double
        let assistsPerGame: Double
        let fieldGoalPercentage: Double
        let playerPosition: String
        let playerJerseyNumber: Int
        let playerHeight: String
        let playerWeight: Int
        let playerAge: Int
        
        var body: some View {
            VStack(alignment: .center, spacing: 0) {
                
                HStack { //Player Name Top Title
                    Text(playerName)
                        .font(.system(size: 36, weight: .bold))
                } .frame(height: 50)
                
                Spacer()
                
                HStack { //Image and etc.
                    ZStack{
                        Image(playerImage)
                            .resizable()
                            .scaledToFit()
                        HStack{
                            Image(playerTeamLogoImage)
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
                        Text("\(pointsPerGame) PPG")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                        Text("\(reboundsPerGame)RPG")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                        Text("\(assistsPerGame)APG")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                        Text("\(fieldGoalPercentage)%FG")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                    }.padding(20)
                    Spacer()
                    VStack{
                        Text(playerPosition)
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                        Text("#\(playerJerseyNumber)")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                        Text(playerHeight)
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                        Text("\(playerWeight)lbs")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                        Text("\(playerAge)")
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

