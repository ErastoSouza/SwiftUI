//
//  ContentView.swift
//  MusicPlayer
//
//  Created by Turma02-5 on 27/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                VStack{
                    AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/pt/thumb/c/c0/Imagine_Dragons_Warriors_capa.jpg/220px-Imagine_Dragons_Warriors_capa.jpg"))
                    {img in
                        img.resizable().scaledToFit().frame(width: 250)
                    }placeholder: {
                        ProgressView()
                    }
                    HStack{
                        Spacer()
                        Text("SwiftFM").font(.title).foregroundStyle(.white)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    
                    ScrollView{
                        VStack{
                            ForEach(arrayMusicas) { musica in
                                NavigationLink(destination:Musica(musica: musica)){
                                    HStack{
                                        AsyncImage(url: URL(string:musica.capa)){img in
                                            img.image?.resizable().scaledToFit().frame(width: 64)
                                        }
                                        VStack{
                                            /*@START_MENU_TOKEN@*/Text(musica.name)/*@END_MENU_TOKEN@*/.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
                                            Text(musica.artist).foregroundStyle(.white)
                                        }
                                        Spacer()
                                    }
                                }
                            }
                        }
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(0..<10) {
                                    Text("\($0)")
                                        .foregroundStyle(.white.gradient)
                                        .font(.largeTitle)
                                        .frame(width: 150, height: 150)
                                        .background(AsyncImage(url: URL(string: "https://m.media-amazon.com/images/I/81zogln5UHL._UF1000,1000_QL80_.jpg")){img in
                                            img.image?.resizable()})
                                }
                            }
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}

struct Song : Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

var arrayMusicas = [
    Song(id: 1, name: "Numb", artist:"Park", capa: "https://upload.wikimedia.org/wikipedia/pt/d/d0/Imagine_Dragons_-_Demons.jpg"),
    Song(id: 2, name: "Lost", artist: "lp", capa: "https://i1.sndcdn.com/artworks-s3zOCWcV8XQVtQcv-0emq8A-t500x500.jpg"),
    Song(id: 3, name: "Lost", artist: "lp", capa: "https://i1.sndcdn.com/artworks-s3zOCWcV8XQVtQcv-0emq8A-t500x500.jpg"),
    Song(id: 4, name: "Lost", artist: "lp", capa: "https://i1.sndcdn.com/artworks-s3zOCWcV8XQVtQcv-0emq8A-t500x500.jpg"),
    Song(id: 5, name: "Numb", artist:"Park", capa: "https://upload.wikimedia.org/wikipedia/pt/d/d0/Imagine_Dragons_-_Demons.jpg"),
    Song(id: 6, name: "Lost", artist: "lp", capa: "https://i1.sndcdn.com/artworks-s3zOCWcV8XQVtQcv-0emq8A-t500x500.jpg"),
    Song(id: 7, name: "Lost", artist: "lp", capa: "https://i1.sndcdn.com/artworks-s3zOCWcV8XQVtQcv-0emq8A-t500x500.jpg"),
    Song(id: 8, name: "Lost", artist: "lp", capa: "https://i1.sndcdn.com/artworks-s3zOCWcV8XQVtQcv-0emq8A-t500x500.jpg")
    
]
