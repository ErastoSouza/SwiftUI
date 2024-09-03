//
//  ViewModel.swift
//  MinhaApi
//
//  Created by Turma02-5 on 03/09/24.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var users: [user] = []
    
    func fetch(){
        
        let task = URLSession.shared.dataTask(with: URL(string: "http://127.0.0.1:1880/name")!){ data, _, error in
            do{
                self.users = try JSONDecoder().decode([user].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()}
}
