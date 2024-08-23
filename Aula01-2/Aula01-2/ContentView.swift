//
//  ContentView.swift
//  Aula01-2
//
//  Created by Turma02-5 on 22/08/24.
//

import SwiftUI

struct ContentView: View {
    @State var nome : String = "Fulano"
    @State var mostrarAlerta = false
    var body: some View {
        ZStack {
            Image("back")
                .resizable()
                .opacity(0.1)
                .aspectRatio(contentMode: .fill)
            VStack{
                Text("Bem Vindo, \(nome)")
                TextField("Digite o nome",text: $nome).frame(width: 200).frame(height: 35).background(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                Image("logo")
                    .resizable()
                    .frame(height: 150).frame(width: 200).shadow(radius: 2)
                Image("truck").resizable()
                    .frame(width: 200).frame(height: 120)
                    .shadow(radius: 2)
                Spacer()
                Button("Entrar!"){
                    mostrarAlerta = true
                }
                .alert(isPresented: $mostrarAlerta){
                    Alert(
                        title: Text("Alerta"), message: Text("Desafio pronto")
                    )
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
