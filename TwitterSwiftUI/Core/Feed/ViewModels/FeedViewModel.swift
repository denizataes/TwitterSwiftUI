//
//  FeedViewModel.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 23.11.2022.
//

import Foundation

class FeedViewModel: ObservableObject{
    let service = TweetService()
    @Published var tweets = [Tweet]()
    let userService = UserService()
    
    init(){
        fetchTweets()
    }
    
    func fetchTweets(){
        service.fetchTweets { tweets in
            self.tweets = tweets
            
            for i in 0 ..< tweets.count{
                let uid = tweets[i].uid
                self.userService.fetchUser(withUid: uid) { user in
                    self.tweets[i].user = user
                }
            }
        }
    }
}
