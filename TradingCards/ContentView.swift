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
                        Text("PPG:")
                            .font(.system(size: 20, weight: .semibold))
                        Text("RPG:")
                            .font(.system(size: 20, weight: .semibold))
                        Text("AG:")
                            .font(.system(size: 20, weight: .semibold))
                        Text("FG%:")
                            .font(.system(size: 20, weight: .semibold))
                    }.padding(20)
                Spacer()
                    VStack{
                        Text("Position")
                            .font(.system(size: 20, weight: .semibold))
                        Text("Jersey Number")
                            .font(.system(size: 20, weight: .semibold))
                        Text("Height")
                            .font(.system(size: 20, weight: .semibold))
                        Text("Weight")
                            .font(.system(size: 20, weight: .semibold))
                        Text("Age")
                            .font(.system(size: 20, weight: .semibold))
                    }.padding(45)
                     
            }.padding(.top, 0)
        }
      
    }
}

#Preview {
    ContentView()
}
