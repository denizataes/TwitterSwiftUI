//
//  TweetRowView.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 17.11.2022.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 12)
            {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        Text("Deniz Ata EŞ")
                            .font(.subheadline).bold()
                        
                        Text("@denizataes")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    Text("Geliyor gelmekte olan...")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
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

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
