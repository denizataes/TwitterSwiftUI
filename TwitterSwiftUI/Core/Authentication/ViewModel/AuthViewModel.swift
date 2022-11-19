//
//  AuthViewModel.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 19.11.2022.
//

import SwiftUI
import FirebaseAuth
import Firebase


class AuthViewModel: ObservableObject{
    @Published var userSession: User?
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String)
    {
        
    }
    
    func register(withEmail email:String, username: String, password: String, fullname: String){
        
    }
    
}
