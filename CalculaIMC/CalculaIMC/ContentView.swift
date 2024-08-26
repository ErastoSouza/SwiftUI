//
//  ContentView.swift
//  CalculaIMC
//
//  Created by Turma02-5 on 23/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var peso: Double = 0
    @State private var altura: Double = 0
    @State private var imc: Double = 0
    @State var cor: Color = .baixo
    var body: some View {
        ZStack {
            VStack{
                Text("Calculadora de IMC").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                TextField("Digite seu peso", value: $peso, format: . number).multilineTextAlignment(.center).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).shadow(radius: 200)
                TextField("Digite sua altura", value: $altura, format: .number).multilineTextAlignment(.center).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).shadow(radius: 200)
                
                Button("Calcular"){
                    imc = (peso/(altura*altura))
                    if imc<18.5{
                        cor = .baixo
                    }else if imc <= 24.99{
                        cor = .normal
                    }else if imc <= 29.99{
                        cor = .sobrepeso
                    }else{
                        cor = .obesidade
                    }
                }.background(.blue).foregroundColor(.white)
                Spacer()
                switch imc{
                    case 0..<18.5:
                    Text("Baixo peso").font(.title2)
                    case 18.5...24.99:
                    Text("Normal").font(.title2)
                    case 25...29.99:
                    Text("Sobrepeso").font(.title2)
                    default:
                    Text("Obesidade").font(.title2)
                    }
                Spacer()
                Image("tabela").resizable().frame(width: 425, height: 300)
            }
            .background(cor)
                
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
