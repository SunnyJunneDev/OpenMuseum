//
//  TopView.swift
//  OpenMuseumApp
//
//  Created by Светлана Шардакова on 02.07.2020.
//  Copyright © 2020 Светлана Шардакова. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var user: UserResponse
    var body: some View {
        HStack(spacing: 8.0) {
            Image(user.profileImage)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4) {
                Text(user.name)
                    .font(.title)
                Text(user.email)
                    .font(.footnote)
                HStack {
                    Image(systemName: "suit.heart")
                    Text(user.likes)
                        .font(.subheadline)
                }
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(user: userResponse[0])
    }
}
