//
//  User.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 21.11.2022.
//

import FirebaseFirestoreSwift
import Firebase

struct Users: Identifiable, Decodable{
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
    
    var isCurrentUser: Bool{ return Auth.auth().currentUser?.uid == id}
}
