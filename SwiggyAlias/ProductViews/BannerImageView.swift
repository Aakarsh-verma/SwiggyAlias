//
//  BannerImageView.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 07/12/24.
//

import SwiftUI

struct BannerImageView: View {
    var model: BannerModel
    var dimension: CGFloat = UIScreen.main.bounds.width - 48
    
    var body: some View {
        Image(model.image, bundle: nil)
            .resizable()
            .cornerRadius(12, corners: .allCorners)
            .frame(width: dimension, height: dimension * (1/3))
            .overlay(
                RoundedRectangle(cornerRadius: 12)                    .stroke(.gray.opacity(0.5), lineWidth: 1)
            )
    }
}

#Preview {
    BannerImageView(model: BannerModel(id: 1, image: "banner"))
}
