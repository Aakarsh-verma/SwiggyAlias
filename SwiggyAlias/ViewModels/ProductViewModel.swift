//
//  ProductViewModel.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 07/12/24.
//

import Foundation
import SwiftUI

class ProductViewModel: ObservableObject {
    var productDimension: CGFloat = 125
    var productBanner: ProductModel = ProductModel(id: 20, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental"))

    @Published var productsGrid: [ProductModel] = [
        ProductModel(id: 1, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental")),
        ProductModel(id: 3, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental")),
        ProductModel(id: 2, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental")),
        ProductModel(id: 4, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental")),
        ProductModel(id: 5, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental")),
        ProductModel(id: 6, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental")),
        ProductModel(id: 21, item: ProductItemModel(image: "pizza", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "gourmet", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Italian")),
        ProductModel(id: 22, item: ProductItemModel(image: "pizza", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "gourmet", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Italian")),
        ProductModel(id: 23, item: ProductItemModel(image: "pizza", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "gourmet", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Italian")),
        ProductModel(id: 24, item: ProductItemModel(image: "pizza", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "gourmet", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Italian")),
        ProductModel(id: 25, item: ProductItemModel(image: "pizza", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "gourmet", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Italian")),
        ProductModel(id: 26, item: ProductItemModel(image: "pizza", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "gourmet", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Italian")),
    ]
    
    var productsHorizontal: [ProductModel] = [
        ProductModel(id: 7, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental")),
        ProductModel(id: 10, item: ProductItemModel(image: "pizza", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Italian")),
        ProductModel(id: 8, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental")),
        ProductModel(id: 9, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental")),
    ]
    
    var productsVertical: [ProductModel] = [
        ProductModel(id: 11, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental")),
        ProductModel(id: 12, item: ProductItemModel(image: "pizza", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Italian")),
        ProductModel(id: 13, item: ProductItemModel(image: "pizza", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Italian")),
        ProductModel(id: 14, item: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"), category: "new", restaurantDescription: RestauranttDescriptionModel(restaurantName: "Kava Fairfield by Mariott", subtitle: "4.8 • 35-40 mins", restaurantCusine: "Continental")),
    ]
    
    var banners: [BannerModel] = [
        BannerModel(id: 1, image: "banner"),
        BannerModel(id: 2, image: "banner2"),
        BannerModel(id: 3, image: "banner"),
        BannerModel(id: 4, image: "banner2"),
        BannerModel(id: 5, image: "banner"),
    ]
    
    @Published var tabs: [TabModel] = [
            TabModel(title: "What's New", category: "new"),
            TabModel(title: "Gourmet Delights", category: "gourmet")
        ]
    
    @Published var selectedCategory: String = "new"
        
    var filteredProducts: [ProductModel] {
        productsGrid.filter { $0.category == selectedCategory }
    }
}
