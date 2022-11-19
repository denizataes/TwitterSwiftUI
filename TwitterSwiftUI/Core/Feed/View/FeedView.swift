//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 17.11.2022.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                LazyVStack{
                    ForEach( 0 ... 20, id: \.self) { _ in
                        TweetRowView()
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
            
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
