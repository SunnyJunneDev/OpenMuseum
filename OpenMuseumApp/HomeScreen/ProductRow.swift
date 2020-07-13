//
//  ProductRow.swift
//  OpenMuseumApp
//
//  Created by Светлана Шардакова on 02.07.2020.
//  Copyright © 2020 Светлана Шардакова. All rights reserved.
//

import SwiftUI

struct ProductRow: View {
    
    var categoryName: String
    var items: [ProductsResponse]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Text(self.categoryName).font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal){
                HStack(alignment: .top, spacing: 0){
                    ForEach(self.items) { object in
                        NavigationLink(destination: DetailScreen(object: object)) {
                            CategoryItem(object: object)
                        }
                    }
                }
            }.frame(height: 230)
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(categoryName: materialResponse[0].category.rawValue, items: Array(materialResponse.prefix(3)))
    }
}
