//
//  DetailScreen.swift
//  OpenMuseumApp
//
//  Created by Светлана Шардакова on 02.07.2020.
//  Copyright © 2020 Светлана Шардакова. All rights reserved.
//

import SwiftUI

struct DetailScreen: View {
    
    var object: ProductsResponse
    var body: some View {
        ScrollView {
            VStack(spacing: 16.0) {
                VStack(spacing: 20.0) {
                    MainImage(object: object)
                    Text(object.name)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .foregroundColor(.black)
                        .font(.title)
                }
                
                CourseDetails(object: object)
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Описание")
                        .font(.title)
                    ScrollView {
                        Text(object.description)
                            .lineLimit(nil)
                    }
                }
                Spacer()
            }.padding()
        }
    }
}

struct CourseDetails: View {
    var object: ProductsResponse
    var body: some View {
        HStack(spacing: 30.0) {
            VStack {
                Text("\(object.lessons)")
                    .font(.title)
                Text("Минут")
                    .font(.body)
                    .fontWeight(.medium)
            }
            VStack {
                Text("\(object.students)")
                    .font(.title)
                Text("Просмотров")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
}

struct MainImage: View {
    var object: ProductsResponse
    var body: some View {
        Image(object.image)
            .resizable()
            .scaledToFill()
            .frame(width: 170, height: 170, alignment: .center)
            .cornerRadius(30)
            .clipped()
            .overlay(RoundedRectangle(cornerRadius: 30)
                .stroke(Color.gray, lineWidth: 3))
            .shadow(radius: 10)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(object: materialResponse[2])
    }
}
