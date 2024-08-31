//
//  ContentView.swift
//  ApiRest
//
//  Created by Turma02-5 on 30/08/24.
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
                        ForEach(viewModel.users){user in
                            NavigationLink(destination: Detalhe()){
                                Text(user.name)
                                
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
