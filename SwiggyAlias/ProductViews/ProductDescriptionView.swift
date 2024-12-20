//
//  ProductDescriptionView.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 07/12/24.
//

import SwiftUI

struct ProductDescriptionView: View {
    var model: RestauranttDescriptionModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(model.restaurantName)
                .font(.system(size: 12, weight: .heavy))
            HStack(spacing: 4) {
                Image(systemName: "star.circle.fill")
                    .foregroundStyle(LinearGradient(
                        gradient: Gradient(colors: [.green, .darkGreen]),
                        startPoint: .top,
                        endPoint: .bottom
                    ))
                Text(model.subtitle)
                    .font(.system(size: 12, weight: .medium))
                    .frame(alignment: .leading)
            }
            Text(model.restaurantCusine)
                .font(.system(size: 12, weight: .light))
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ProductDescriptionView(model:         
                            RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental"))
}
