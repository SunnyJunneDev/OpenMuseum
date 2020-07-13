//
//  EmployeesList.swift
//  OpenMuseumApp
//
//  Created by Светлана Шардакова on 02.07.2020.
//  Copyright © 2020 Светлана Шардакова. All rights reserved.
//

import SwiftUI

struct EmployeesList: View {
    var body: some View {
        VStack() {
            List(userResponse) { user in
                Cell(user: user)
            }
            .navigationBarTitle(Text("Экскурсоводы"), displayMode: .inline)
        }
    }
}

struct EmployeesList_Previews: PreviewProvider {
    static var previews: some View {
        EmployeesList()
    }
}
