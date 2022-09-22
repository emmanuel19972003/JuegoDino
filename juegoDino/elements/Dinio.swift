//
//  File.swift
//  juegoDino
//
//  Created by Emmanuel Zambrano Quitian on 9/21/22.
//

import Foundation
struct Dinio:Shape{
    func path(in rect: CGRect) -> Path {
        Path{path in
            let x = rect.width
            let y = rect.height
            
            path.move(to: CGPoint(x: x*0.3, y: y))
            path.addLine(to: CGPoint(x: x*0.3, y: y*0.8))
            path.addLine(to: CGPoint(x: x*0.1, y: y*0.6))
            path.addLine(to: CGPoint(x: x*0.1, y: y*0.35))
            path.addLine(to: CGPoint(x: x*0.15, y: y*0.35))
            path.addLine(to: CGPoint(x: x*0.15, y: y*0.45))
            path.addLine(to: CGPoint(x: x*0.2, y: y*0.55))
            path.addLine(to: CGPoint(x: x*0.3, y: y*0.55))
            path.addLine(to: CGPoint(x: x*0.5, y: y*0.4))
            path.addLine(to: CGPoint(x: x*0.5, y: y*0.1))
            path.addLine(to: CGPoint(x: x*0.55, y: y*0.1))
            path.addLine(to: CGPoint(x: x*0.55, y: y*0.05))
            path.addLine(to: CGPoint(x: x*0.9, y: y*0.05))
            path.addLine(to: CGPoint(x: x*0.9, y: y*0.1))
            path.addLine(to: CGPoint(x: x*0.95, y: y*0.1))
            path.addLine(to: CGPoint(x: x*0.95, y: y*0.25))
            path.addLine(to: CGPoint(x: x*0.75, y: y*0.25))
            path.addLine(to: CGPoint(x: x*0.75, y: y*0.31))//18
            path.addLine(to: CGPoint(x: x*0.85, y: y*0.31))
            path.addLine(to: CGPoint(x: x*0.85, y: y*0.38))
            path.addLine(to: CGPoint(x: x*0.7, y: y*0.38))
            path.addLine(to: CGPoint(x: x*0.7, y: y*0.45))
            path.addLine(to: CGPoint(x: x*0.8, y: y*0.45))
            path.addLine(to: CGPoint(x: x*0.8, y: y*0.55))
            path.addLine(to: CGPoint(x: x*0.75, y: y*0.55))
            path.addLine(to: CGPoint(x: x*0.75, y: y*0.5))
            path.addLine(to: CGPoint(x: x*0.7, y: y*0.5))
            path.addLine(to: CGPoint(x: x*0.7, y: y*0.65))
            path.addLine(to: CGPoint(x: x*0.55, y: y*0.75))
            path.addLine(to: CGPoint(x: x*0.55, y: y*0.95))
            path.addLine(to: CGPoint(x: x*0.6, y: y*0.95))
            path.addLine(to: CGPoint(x: x*0.6, y: y*1))
            path.addLine(to: CGPoint(x: x*0.5, y: y*1))
            path.addLine(to: CGPoint(x: x*0.5, y: y*0.85))
            path.addLine(to: CGPoint(x: x*0.45, y: y*0.8))
            path.addLine(to: CGPoint(x: x*0.35, y: y*0.9))
            path.addLine(to: CGPoint(x: x*0.35, y: y*0.95))
            path.addLine(to: CGPoint(x: x*0.4, y: y*0.95))
            path.addLine(to: CGPoint(x: x*0.4, y: y*1))
            path.closeSubpath()
            
            
            
            
        }
        
    }
}
