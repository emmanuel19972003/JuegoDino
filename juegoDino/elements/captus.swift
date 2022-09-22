//
//  File.swift
//  juegoDino
//
//  Created by Emmanuel Zambrano Quitian on 9/21/22.
//

import Foundation
import SwiftUI

struct captus:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ path in
            let x = rect.width
            let y = rect.height
            
            path.move(to: CGPoint(x: x*0.4, y: y))
            path.addLine(to: CGPoint(x: x*0.4, y: y*0.7))
            path.addLine(to: CGPoint(x: x*0.3, y: y*0.7))
            path.addLine(to: CGPoint(x: x*0.2, y: y*0.6))
            path.addLine(to: CGPoint(x: x*0.2, y: y*0.4))
            path.addArc(center: CGPoint(x: x*0.25, y: y*0.4),
                        radius: x/20,
                        startAngle: Angle.degrees(180),
                        endAngle: Angle.degrees(0),
                        clockwise: false)
            path.addLine(to: CGPoint(x: x*0.3, y: y*0.4))
            path.addLine(to: CGPoint(x: x*0.3, y: y*0.6))
            path.addLine(to: CGPoint(x: x*0.4, y: y*0.6))
            path.addLine(to: CGPoint(x: x*0.4, y: y*0.2))
            path.addArc(center: CGPoint(x: x*0.5, y: y*0.2),
                        radius: x*0.1,
                        startAngle: Angle.degrees(180),
                        endAngle: Angle.degrees(0),
                        clockwise: false)
            path.addLine(to: CGPoint(x: x*0.6, y: y*0.2))
            path.addLine(to: CGPoint(x: x*0.6, y: y*0.5))
            path.addLine(to: CGPoint(x: x*0.7, y: y*0.5))
            path.addLine(to: CGPoint(x: x*0.7, y: y*0.3))
            path.addArc(center: CGPoint(x: x*0.75, y: y*0.3),
                        radius: x*0.05,
                        startAngle: Angle.degrees(180),
                        endAngle: Angle.degrees(0),
                        clockwise: false)
            path.addLine(to: CGPoint(x: x*0.8, y: y*0.3))
            path.addLine(to: CGPoint(x: x*0.8, y: y*0.5))
            path.addLine(to: CGPoint(x: x*0.7, y: y*0.6))
            path.addLine(to: CGPoint(x: x*0.6, y: y*0.6))
            path.addLine(to: CGPoint(x: x*0.6, y: y))
            
            
        }
    }
}
