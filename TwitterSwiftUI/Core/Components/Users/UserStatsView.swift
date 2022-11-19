//
//  UserStatsView.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 18.11.2022.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        
        HStack(spacing: 24){
            HStack(spacing: 4){
                
                Text("610")
                    .font(.subheadline)
                    .bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
                    
            }
            
            HStack{
                Text("610")
                    .font(.subheadline)
                    .bold()
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
