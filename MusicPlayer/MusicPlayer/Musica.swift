//
//  Musica.swift
//  MusicPlayer
//
//  Created by Turma02-5 on 27/08/24.
//

import SwiftUI

struct Musica: View {
    var musica: Song
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string:musica.capa)){img in
                    img.image?.resizable().scaledToFit()
                }
                /*@START_MENU_TOKEN@*/Text(musica.name)/*@END_MENU_TOKEN@*/.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
                Text(musica.artist).foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    Musica(musica:arrayMusicas[1])
}
