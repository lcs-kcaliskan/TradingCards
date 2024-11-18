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
                      Text("Player Name")
                        .font(.system(size: 36, weight: .bold))
                  } .frame(height: 50)
            
            Spacer()
               
            HStack { //Image and etc.
                ZStack{
                    Text("Player Image")
                        .padding(15)
                } .border(Color.green, width: 15)
                  }.frame(height: 500)
                .padding(.top, -150)
            
            
            HStack { //Stats
                    VStack{
                        Text("Season Stats:")
                        Text("PPG:")
                        Text("RPG:")
                        Text("AG:")
                        Text("FG%:")
                    }.padding(50)
                Spacer()
                    VStack{
                        Text("Position")
                        Text("Jersey Number")
                        Text("Height")
                        Text("Weight")
                        Text("Age")
                    }.padding(50)
                     
            }.padding(.top, 0)
        }
      
    }
}

#Preview {
    ContentView()
}
