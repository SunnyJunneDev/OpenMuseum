//
//  Data.swift
//  OpenMuseumApp
//
//  Created by Светлана Шардакова on 02.07.2020.
//  Copyright © 2020 Светлана Шардакова. All rights reserved.
//

import UIKit
import SwiftUI

let swiftBook = UserResponse(id: 10, name: "Онлайн-музей", profileImage: "persiki", email: "info@museum.ru", likes: "54.4K", text:
    """
Рады приветствовать вас в самом большом онлайн-музее!
Отправляйтесь в увлекательное путешествие по миру искусства вместе с нами не выходя из дома!
#оставайтесьДома
""")

let materialResponse: [ProductsResponse] = load("activitiesModelData.json")
let userResponse: [UserResponse] = load("employeeModelData.json")


func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

