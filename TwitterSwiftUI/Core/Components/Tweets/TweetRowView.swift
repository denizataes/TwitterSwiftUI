//
//  TweetRowView.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 17.11.2022.
//

import SwiftUI
import Kingfisher

struct TweetRowView: View {
    let tweet: Tweet
    var body: some View {
        
        VStack(alignment: .leading){
            if let user = tweet.user{
                HStack(alignment: .top, spacing: 12)
                {
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .frame(width: 56, height: 56)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4){
                        
                        HStack{
                            Text(user.fullname)
                                .font(.subheadline).bold()
                            
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                            
                            Text("2w")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                        
                        Text(tweet.caption)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                        
                    }
                }
                
            }
            //action buttons
            HStack{
                Button {
                    //action
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                    
                    
                }
                Spacer()
                
                Button {
                    //action
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                    
                    
                }
                Spacer()
                
                Button {
                    //action
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                    
                    
                }
                Spacer()
                
                Button {
                    //action
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                    
                    
                }
                
            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
        .padding()
        
        
        
    }
}

//struct TweetRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetRowView()
//    }
//}
