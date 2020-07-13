//
//  UserResponse.swift
//  OpenMuseumApp
//
//  Created by Светлана Шардакова on 02.07.2020.
//  Copyright © 2020 Светлана Шардакова. All rights reserved.
//

import UIKit
import SwiftUI

struct UserResponse: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var profileImage: String
    var email: String
    var likes: String
    var text: String
}
