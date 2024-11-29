//
//  File.swift
//  TradingCards
//
//  Created by Ahmet Kaan Caliskan on 2024-11-28.
//

import Foundation

struct PlayerCard: Identifiable {
    let id = UUID()
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
}

let jaylenBrown = PlayerCard(playerName: "Jaylen Brown", playerImage: "JaylenBrown", playerTeamLogoImage: "CelticsLogo", pointsPerGame: 25.0, reboundsPerGame: 6.6, assistsPerGame: 4.4, fieldGoalPercentage: 44, playerPosition: "SG", playerJerseyNumber: 7, playerHeight: "6'6", playerWeight: 223, playerAge: 28)
let jaysonTatum = PlayerCard(playerName: "Jayson Tatum", playerImage: "JaysonTatum", playerTeamLogoImage: "CelticsLogo", pointsPerGame: 28.4, reboundsPerGame: 8.2, assistsPerGame: 5.8, fieldGoalPercentage: 45.1, playerPosition: "SF", playerJerseyNumber: 0, playerHeight: "6'8", playerWeight: 210, playerAge: 26)
let jrueHoliday = PlayerCard(playerName: "Jrue Holiday", playerImage: "JrueHoliday", playerTeamLogoImage: "CelticsLogo", pointsPerGame: 12.2, reboundsPerGame: 4.1, assistsPerGame: 3.9, fieldGoalPercentage: 45.9, playerPosition: "PG", playerJerseyNumber: 4, playerHeight: "6'4", playerWeight: 205, playerAge: 34)
