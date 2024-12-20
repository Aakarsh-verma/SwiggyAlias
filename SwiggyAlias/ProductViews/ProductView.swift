//
//  ProductView.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 07/12/24.
//

import SwiftUI

struct VerticalProductView: View {
    var dimension: CGFloat = 125
    var model: ProductModel
    var hideDescription: Bool = false
    
    var body: some View {
        VStack(spacing: 4) {
            ProductImageView(dimension: dimension, model: model.item)
            if !hideDescription {
                ProductDescriptionView(model: model.restaurantDescription)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .frame(width: dimension)
    }
}

struct HorizontalProductView: View {
    var dimension: CGFloat = 125
    var viewModel: ProductViewModel
    var model: ProductModel
    
    var body: some View {
        HStack(alignment: .top) {
            ProductImageView(dimension: viewModel.productDimension, model: model.item)
            ProductDescriptionView(model: model.restaurantDescription)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
        }
        .padding(.horizontal)
    }
}

//#Preview {
//    VStack(spacing: 16) {
//        VerticalProductView(model: ProductViewModel().products[0])
//        HorizontalProductView(viewModel: ProductViewModel(), model: ProductViewModel().products[0])
//    }
//}
