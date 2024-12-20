//
//  Models.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 08/12/24.
//

import Foundation

struct ProductModel: Codable, Identifiable {
    let id: Int
    let item: ProductItemModel
    let category: String
    let restaurantDescription: RestauranttDescriptionModel
}

struct ProductItemModel: Codable {
    let image: String
    let offerTitle: String
    let offerSubTitle: String
}

struct RestauranttDescriptionModel: Codable {
    let restaurantName: String
    let subtitle: String
    let restaurantCusine: String
}

struct BannerModel: Identifiable {
    let id: Int
    let image: String
}

struct TabModel: Identifiable {
    let id: UUID = UUID()
    var title: String
    var category: String
}
