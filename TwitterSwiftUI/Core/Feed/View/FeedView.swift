//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 17.11.2022.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    @ObservedObject var viewmodel = FeedViewModel()
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                LazyVStack{
                    ForEach( viewmodel.tweets) { tweet in
                        TweetRowView(tweet: tweet)
                    }
                }
            }
            
            Button{
                showNewTweetView.toggle()
            } label: {
                ZStack{
                    Circle()
                        .fill(.blue)
                        .frame(width: 64 ,height: 64)
                    
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(width: 40)
                        
                }.padding()
                    .fullScreenCover(isPresented: $showNewTweetView){
                        NewTweetView()
                    }  
            }
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
