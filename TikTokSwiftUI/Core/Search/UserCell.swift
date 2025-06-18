//
//  UserCell.swift
//  TikTokSwiftUI
//
//  Created by Marcos Roberto Lemos Veloso on 17/06/25.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading) {
                Text("test_user")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("@marcosrlv")
                    .font(.footnote)
                    .foregroundStyle(Color(.systemGray))
            }
            
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
