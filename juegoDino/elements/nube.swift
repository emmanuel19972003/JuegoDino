//
//  nube.swift
//  juegoDino
//
//  Created by Emmanuel Zambrano Quitian on 9/24/22.
//

import SwiftUI

struct nube: View {
    var body: some View {
        MyCustomShape()
    }
}

struct nube_Previews: PreviewProvider {
    static var previews: some View {
        nube()
    }
}

struct MyCustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.27537*width, y: 0.20888*height))
        path.addCurve(to: CGPoint(x: 0.82288*width, y: 0.41119*height), control1: CGPoint(x: 0.66812*width, y: 0.125*height), control2: CGPoint(x: 0.80769*width, y: 0.25*height))
        path.addCurve(to: CGPoint(x: width, y: 0.61081*height), control1: CGPoint(x: 0.92237*width, y: 0.42525*height), control2: CGPoint(x: width, y: 0.50856*height))
        path.addCurve(to: CGPoint(x: 0.79294*width, y: 0.8125*height), control1: CGPoint(x: width, y: 0.72306*height), control2: CGPoint(x: 0.90638*width, y: 0.8125*height))
        path.addLine(to: CGPoint(x: 0.23631*width, y: 0.8125*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.58237*height), control1: CGPoint(x: 0.10675*width, y: 0.8125*height), control2: CGPoint(x: 0, y: 0.71037*height))
        path.addCurve(to: CGPoint(x: 0.18388*width, y: 0.35781*height), control1: CGPoint(x: 0, y: 0.47219*height), control2: CGPoint(x: 0.07913*width, y: 0.38094*height))
        path.addCurve(to: CGPoint(x: 0.27538*width, y: 0.20887*height), control1: CGPoint(x: 0.19281*width, y: 0.30388*height), control2: CGPoint(x: 0.2275*width, y: 0.25012*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.31619*width, y: 0.25619*height))
        path.addCurve(to: CGPoint(x: 0.24412*width, y: 0.38469*height), control1: CGPoint(x: 0.26887*width, y: 0.297*height), control2: CGPoint(x: 0.24412*width, y: 0.34619*height))
        path.addLine(to: CGPoint(x: 0.24412*width, y: 0.41269*height))
        path.addLine(to: CGPoint(x: 0.21631*width, y: 0.41575*height))
        path.addCurve(to: CGPoint(x: 0.0625*width, y: 0.58237*height), control1: CGPoint(x: 0.129*width, y: 0.42531*height), control2: CGPoint(x: 0.0625*width, y: 0.497*height))
        path.addCurve(to: CGPoint(x: 0.23631*width, y: 0.75*height), control1: CGPoint(x: 0.0625*width, y: 0.67406*height), control2: CGPoint(x: 0.13937*width, y: 0.75*height))
        path.addLine(to: CGPoint(x: 0.79294*width, y: 0.75*height))
        path.addCurve(to: CGPoint(x: 0.9375*width, y: 0.61081*height), control1: CGPoint(x: 0.87375*width, y: 0.75*height), control2: CGPoint(x: 0.9375*width, y: 0.68675*height))
        path.addCurve(to: CGPoint(x: 0.79294*width, y: 0.47156*height), control1: CGPoint(x: 0.9375*width, y: 0.53481*height), control2: CGPoint(x: 0.87375*width, y: 0.47156*height))
        path.addLine(to: CGPoint(x: 0.76169*width, y: 0.47156*height))
        path.addLine(to: CGPoint(x: 0.76169*width, y: 0.44031*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.1875*height), control1: CGPoint(x: 0.76175*width, y: 0.30156*height), control2: CGPoint(x: 0.6455*width, y: 0.1875*height))
        path.closeSubpath()
        return path
    }
}
