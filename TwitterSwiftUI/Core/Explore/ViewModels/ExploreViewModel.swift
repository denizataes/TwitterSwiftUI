//
//  ExploreViewModel.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 22.11.2022.
//

import Foundation

class ExploreViewModel: ObservableObject{
    @Published var users = [Users]()
    @Published var searchText = ""
    let service = UserService()
    
    var searchableUsers: [Users]{
        if searchText.isEmpty{
            return users
        }
        else{
            let lowercasedQuery = searchText.lowercased()
            return users.filter {
                $0.username.contains(lowercasedQuery) ||
                $0.fullname.lowercased().contains(lowercasedQuery)
            }
        }
        
    }
    
    init(){
        fetchUsers()
    }
    func fetchUsers(){
        service.fetchUsers { users in
            self.users = users
        }
    }
    
    
}
