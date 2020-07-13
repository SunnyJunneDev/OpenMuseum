//
//  ProductResponses.swift
//  OpenMuseumApp
//
//  Created by Светлана Шардакова on 02.07.2020.
//  Copyright © 2020 Светлана Шардакова. All rights reserved.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable, Codable, Hashable {
    case exhibitions = "Выставки"
    case excursions = "Экскурсии"
}

struct ProductsResponse: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var shortName: String
    var category: Category
    var description: String
    var rating: Double
    var students: Int
    var lessons: Int
    var isFavorite: Bool
    var isFeatured: Bool
}
