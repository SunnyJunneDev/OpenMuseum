//
//  CategoryRow.swift
//  OpenMuseumApp
//
//  Created by Светлана Шардакова on 02.07.2020.
//  Copyright © 2020 Светлана Шардакова. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    var categories: [String : [ProductsResponse]] {
        .init(grouping: materialResponse, by: {$0.category.rawValue} )
    }
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    Cell(user: swiftBook)
                        .frame(alignment: .leading)
                        .listRowInsets(EdgeInsets())
                    Divider()
                    ForEach(self.categories.keys.sorted(), id: \.self) { key in
                        ProductRow(categoryName: key, items: self.categories[key]!)
                    }
                    .listRowInsets(EdgeInsets())
                    Divider()
                    NavigationLink(destination: EmployeesList()) {
                        Text("Наши экскурсоводы")
                    }
                }
                    
                .navigationBarTitle(Text("О нас"))
            }

        } .onAppear(perform: {
            UITableView.appearance().separatorStyle = .none
        })
    }
}

#if DEBUG
struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
#endif
