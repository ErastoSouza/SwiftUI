//
//  Modo 1.swift
//  NavigationCerto
//
//  Created by Turma02-5 on 26/08/24.
//

import SwiftUI

struct Modo_1: View {
    var body: some View {
        ZStack{
            Color(.blue)
            Circle().fill(.pink).scaledToFit()
            VStack{
                Text("Nome: Erasto").foregroundStyle(.white)
                Text("Sobrenome: Souza").foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    Modo_1()
}
