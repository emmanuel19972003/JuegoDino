//
//  SwiftUIView.swift
//  juegoDino
//
//  Created by Emmanuel Zambrano Quitian on 9/21/22.
//

import SwiftUI

struct planta:Shape{
    func path(in rect: CGRect) -> Path {
        Path{path in
            let x = rect.width
            let y = rect.height
            
            path.move(to: CGPoint(x: x*0.1, y: y))
            //path.addLine(to: CGPoint(x: x*0.1, y: y*0.8))
            path.addQuadCurve(to: CGPoint(x: x*0.3, y: y*0.8), control: CGPoint(x: x*0.1, y: y*0.7))
            path.addQuadCurve(to: CGPoint(x: x*0.6, y: y*0.77), control: CGPoint(x: x*0.4, y: y*0.65))
            path.addQuadCurve(to: CGPoint(x: x*0.9, y: y), control: CGPoint(x: x*0.8, y: y*0.65))
            path.closeSubpath()
                      
            
            
        }
    }
}

