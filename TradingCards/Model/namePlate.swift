//
//  Untitled.swift
//  TradingCards
//
//  Created by Ahmet Kaan Caliskan on 2024-11-28.
//

import SwiftUI

struct namePlate: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX / 4, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX / 1.125, y: rect.midY ))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY ))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        return path
    }
}
#Preview {
    namePlate()
        .padding()
}
