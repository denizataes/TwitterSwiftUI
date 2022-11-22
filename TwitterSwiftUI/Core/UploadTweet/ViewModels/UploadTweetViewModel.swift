//
//  UploadTweetViewModel.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 23.11.2022.
//

import Foundation

class UploadTweetViewModel: ObservableObject{
    let service = TweetService()
    @Published var diduploadTweet = false
    
    func uploadTweet(withCaption caption: String){
        service.uploadTweet(caption: caption) { success in
            if success{
                self.diduploadTweet = true
            } else{
                
            }
        }
        
    }
}
