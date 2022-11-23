//
//  Tweet.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 23.11.2022.
//

import FirebaseFirestoreSwift
import Firebase


struct Tweet: Identifiable, Decodable {
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    let uid: String
    var likes: Int
    
    var user: Users?
    var didLike: Bool? = false
    
}
