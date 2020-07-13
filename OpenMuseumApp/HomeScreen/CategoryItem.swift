//
//  ProductItem.swift
//  OpenMuseumApp
//
//  Created by Светлана Шардакова on 02.07.2020.
//  Copyright © 2020 Светлана Шардакова. All rights reserved.
//

import SwiftUI

struct CategoryItem: View {
    
    var object: ProductsResponse
    var body: some View {
        VStack {
            Image(object.image)
                .resizable()
                .renderingMode(.original)
                .scaledToFill()
                .frame(width: 150, height: 150, alignment: .center)
                .clipped()
                .cornerRadius(10)
            
            Text(object.name)
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .foregroundColor(.black)
                .frame(height: nil)
        }.padding(.leading, 15)
            .frame(width: 170, height: 230, alignment: .top)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(object: materialResponse[5])
    }
}
