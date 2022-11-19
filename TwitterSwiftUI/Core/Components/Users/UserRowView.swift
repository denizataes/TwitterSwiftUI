//
//  UserRowView.swift
//  TwitterSwiftUI
//
//  Created by Deniz Ata Eş on 18.11.2022.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12){
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4){
                Text("Umut Koşar")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
                Text("@umutkosar")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
