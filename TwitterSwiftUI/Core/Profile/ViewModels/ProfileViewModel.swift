//
//  ProfileViewModel.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 23.11.2022.
//

import Foundation

class ProfileViewModel: ObservableObject{
    @Published var likedTweets = [Tweet]()
    @Published var tweets = [Tweet]()
    
    private let service = TweetService()
    private let userService = UserService()
     let user: Users
        
    init(user: Users){
        self.user = user
        self.fetchUserTweets()
        self.fetchLikedTweets()
    }
    var actionButtonTitle: String{
        return user.isCurrentUser ? "Edit Profile" : "Follow"
    }
    
    func tweets(forFilter filter: TweetFilterViewModel ) -> [Tweet]{
        switch filter {
        case .tweets:
            return tweets
        case.replies:
            return tweets
        case .likes:
            return likedTweets
        }
    }
    
    func fetchUserTweets(){
        guard let uid = user.id else { return }
        service.fetchTweets(forUid: uid) { tweets in
            self.tweets = tweets
            for i in 0 ..< tweets.count {
                self.tweets[i].user = self.user
            }
        }
    }
    
    func fetchLikedTweets(){
        guard let uid = user.id else { return }

        service.fetchLikedTweets(forUid: uid) { tweets in
            self.likedTweets = tweets
            
            for i in 0 ..< tweets.count{
                let uid = tweets[i].uid
                self.userService.fetchUser(withUid: uid) { user in
                    self.likedTweets[i].user = user
                }
            }
        }
    }
        
    
}
