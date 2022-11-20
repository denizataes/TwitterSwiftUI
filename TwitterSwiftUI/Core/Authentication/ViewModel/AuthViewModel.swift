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
    @Published var didAuthenticateUser = false
    private var tempUserSession: User?
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String)
    {
        Auth.auth().signIn(withEmail: email, password: password){ result, error in
            
            if let error = error{
                print("DEBUG: failed to sign in with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else{return}
            self.userSession = user
        }
        
    }
    
    func register(withEmail email:String, username: String, password: String, fullname: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            
            if let error = error{
                print("DEBUG: failed to register with error \(error.localizedDescription)")
                return
            }
            else{
                guard let user = result?.user else{return}
                
                self.tempUserSession = user


                let data = ["email": email,
                            "username": username.lowercased(),
                            "fullname": fullname,
                            "uid": user.uid]

                Firestore.firestore().collection("users")
                    .document(user.uid)
                    .setData(data){ _ in
                        self.didAuthenticateUser = true
                    }
            }
            
        }
        
    }
    
    func signOut(){
        userSession = nil //clientside
        try? Auth.auth().signOut() //serverside
    }
    
    func uploadProfileImage(_ image: UIImage){
        guard let uid = tempUserSession?.uid else{return}
        
        ImageUploader.uploadImage(image: image) { profileImageUrl in
            Firestore.firestore().collection("users")
                .document(uid)
                .updateData(["profileImageUrl": profileImageUrl]) { _ in
                    self.userSession = self.tempUserSession
                }
        }
        
    }
    
}
