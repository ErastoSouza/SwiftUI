//
//  ContentView.swift
//  Navigation
//
//  Created by Turma02-5 on 26/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
                Rosa()
                .tabItem{
                    Label("Rosa", systemImage:"heart")
                }
                Azul()
                .tabItem{
                    Label("Azul", systemImage:"suit.spade")
                }
                Cinza()
                .tabItem{
                Label("Cinza", systemImage:"shield.checkered")
                }
                Lista()
                .tabItem{
                    Label("Lista", systemImage:"list.bullet.clipboard")
                }
            }
    
        }

    }
#Preview {
    ContentView()
}
