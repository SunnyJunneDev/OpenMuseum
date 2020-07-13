//
//  Cell.swift
//  OpenMuseumApp
//
//  Created by Светлана Шардакова on 02.07.2020.
//  Copyright © 2020 Светлана Шардакова. All rights reserved.
//

import SwiftUI

struct Cell: View {
    var user: UserResponse
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            TopView(user: user)
            Text(user.text)
            .lineLimit(nil)
            } .padding()
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(user: userResponse[0])
    }
}
