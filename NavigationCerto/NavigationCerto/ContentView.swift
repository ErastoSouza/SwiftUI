//
//  ContentView.swift
//  NavigationCerto
//
//  Created by Turma02-5 on 26/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            ZStack{
                Color(.blue)
                VStack{
                    Image(
                        "logo"
                        ).resizable().scaledToFit().colorMultiply(.black).colorInvert()
                    NavigationStack{
                        NavigationLink(destination: Modo_1()){
                            Text("Modo 1").background(.pink).foregroundStyle(.white).font(.title)
                                }
                    NavigationLink(destination: Modo_1()){
                                Text("Modo 2").background(.pink).foregroundStyle(.white).font(.title)
                                }
                            }
                    }
    
            }
    }
}
#Preview {
    ContentView()
}
