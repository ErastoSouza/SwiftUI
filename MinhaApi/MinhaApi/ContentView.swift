//
//  ContentView.swift
//  MinhaApi
//
//  Created by Turma02-5 on 03/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
            VStack {
                AsyncImage(url: URL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfVJIkvVpxO0GR4Q-QTiEqfhmf2mNkpgi2Aw&s" )){img in
                    img.resizable().scaledToFit().frame(width: 395).ignoresSafeArea()
                }placeholder: {
                    ProgressView()
                }
                ScrollView{
                    VStack{
                        ForEach(viewModel.users, id: \._id){user in
                            NavigationLink(destination: Detalhe()){
                                Text(user.nome)
                                
                            }
                        }
                    }
                }.onAppear(){
                    viewModel.fetch()
            }
            }
        }
    }
}

#Preview {
    ContentView()
}

