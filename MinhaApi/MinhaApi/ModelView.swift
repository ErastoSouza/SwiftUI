//
//  ModelView.swift
//  MinhaApi
//
//  Created by Turma02-5 on 03/09/24.
//

import Foundation

import Foundation

class ViewModel : ObservableObject{
    @Published var users: [user] = []
    
    func fetch(){
        
        let task = URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/users")!){ data, _, error in
            do{
                self.users = try JSONDecoder().decode([user].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()}
}
