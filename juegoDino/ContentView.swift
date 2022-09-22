//
//  ContentView.swift
//  juegoDino
//
//  Created by Emmanuel Zambrano Quitian on 9/19/22.
//

import SwiftUI

struct ContentView: View {
    var size:CGFloat = 60
    @State var dinooffset:CGFloat = 0
    @State var captussoffset:CGFloat = 0
    @State var captussoffset2:CGFloat = 120
    @State var planta1:CGFloat = 0
    @State var planta2:CGFloat = 0
    @State var planta3:CGFloat = 0
    @State var dicolor:Color = .black
    @State var doblesalto:Int = 0
    @State var score = 0
    @Namespace var animation
    let fps:Double = 0
    
    @State private var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        VStack(spacing: 0){
            Rectangle().overlay {
                HStack{
                    Text("\(score)").foregroundColor(.white).font(.largeTitle)
                }
            }
            ZStack {
                
                HStack(alignment: .bottom, spacing: 0){
                    Rectangle().frame(width: 1).foregroundColor(.white)
                    planta().fill(.green).frame(width: size, height: size/1)
                        .offset(x: planta1)
                        .onReceive(timer) { _ in
                            if (planta1 < -size*2){
                                planta1 = UIScreen.main.bounds.width
                            }
                            withAnimation {
                                planta1 = desplasarCaptus(pos: planta1,velocidadDesplacamietno: 10)
                            }
                        }
                    
                    planta().fill(.blue).frame(width: size, height: size/1)
                        .offset(x: planta2)
                        .onReceive(timer) { _ in
                            if (planta2 < -size*3){
                                planta2 = UIScreen.main.bounds.width
                            }
                            withAnimation {
                                planta2 = desplasarCaptus(pos: planta2,velocidadDesplacamietno: 10)
                            }
                        }
                        
                    planta().fill(.red).frame(width: size, height: size/1)
                        .offset(x: planta3)
                        .onReceive(timer) { _ in
                            if (planta3 < -size*4){
                                planta3 = UIScreen.main.bounds.width
                            }
                            withAnimation {
                                planta3 = desplasarCaptus(pos: planta3,velocidadDesplacamietno: 10)
                            }
                        }
                        
                        
                }

                HStack(alignment: .bottom, spacing: 0){
                    Rectangle().frame(width: 1)
                    ZStack{
                        
                        
                        captus()
                            .frame(width: size, height: size)
                            .offset(x: captussoffset)
                            .onReceive(timer) { _ in
                                if (captussoffset < -size){
                                    captussoffset = UIScreen.main.bounds.width
                                    score += 1
                                }
                                colicion(pos: captussoffset)
                                withAnimation {
                                    captussoffset = desplasarCaptus(pos: captussoffset)
                                }
                            }
//                        captus()
//                            .frame(width: size, height: size)
//                            .offset(x: captussoffset2)
//                            .onReceive(timer) { _ in
//                                if (captussoffset2 < -size){
//                                    captussoffset2 = UIScreen.main.bounds.width + 120
//                                    score += 1
//                                }
//                                colicion(pos: captussoffset2)
//                                withAnimation {
//                                    captussoffset2 = desplasarCaptus(pos: captussoffset2)
//                                }
//                            }
                        
                        Dinio()
                            .matchedGeometryEffect(id: "dino", in: animation)
                            .frame(width: size, height: size)
                            .foregroundColor(dicolor)
                            .offset(y: dinooffset)
                            .onReceive(timer) { _ in
                                withAnimation {
                                    salto()
                                }
                            }
                        
                        
                        
                        
                        
                    }
                    Spacer()
                }.frame(height: size*3)
                Rectangle().foregroundColor(.white.opacity(0.01))
            }
            Rectangle()
        }
        .ignoresSafeArea()
        .onAppear{
            captussoffset = UIScreen.main.bounds.width
        }
        .onTapGesture {
            if (dicolor == .red){
                resert()
                
                
            }else{
                withAnimation {
                    if (doblesalto < 2){
                        dinooffset = -size*2
                        doblesalto += 1
                    }
                    
                }
            }
            
        }
    }
    func salto(){
        if (dinooffset < 0){
            dinooffset += (size*1.5)*0.2
        }else{
            doblesalto = 0
        }
    }
    func desplasarCaptus(pos: CGFloat, velocidadDesplacamietno:CGFloat = 18) -> CGFloat{
        var position = pos
        position -= velocidadDesplacamietno
        return position
    }
    func colicion(pos: CGFloat){
        let position = pos
        if ((position < size*0.8 && position > 0) && (abs(dinooffset) < size)){
            dicolor = .red
            self.timer.upstream.connect().cancel()
        }else{
            dicolor = .black
        }
    }
    func resert(){
        captussoffset = UIScreen.main.bounds.width
        captussoffset2 = UIScreen.main.bounds.width + 120
        dicolor = .black
        self.timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
        score = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





