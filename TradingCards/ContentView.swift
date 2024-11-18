//
//  ContentView.swift
//  TradingCards
//
//  Created by Ahmet Kaan Caliskan on 2024-11-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack(alignment: .center, spacing: 0) {
           
            HStack { //Player Name Top Title
                      Text("Jaylen Brown")
                        .font(.system(size: 36, weight: .bold))
                  } .frame(height: 50)
            
            Spacer()
               
            HStack { //Image and etc.
                ZStack{
                    Image("JaylenBrown")
                        .resizable()
                        .scaledToFit()
                    HStack{
                        Image("CelticsLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .offset(x: 130, y: 200)
                        
                    }
                .padding(15)
                } .border(Color.green, width: 15)
                  }.frame(height: 500)
                .padding(.top, -150)
           
           
            
            HStack { //Stats
                    VStack{
                        Text("Season Stats:")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.white)
                        Text("25.6 PPG")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                        Text("7.1 RPG")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                        Text("4.0 AG")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                        Text("43.0% FG")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                    }.padding(20)
                Spacer()
                    VStack{
                        Text("SG")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                        Text("#7")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                        Text("6'6")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                        Text("223 lbs")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                        Text("28")
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

#Preview {
    ContentView()
}
