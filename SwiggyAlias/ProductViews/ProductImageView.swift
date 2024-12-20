//
//  ProductImageView.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 07/12/24.
//

import SwiftUI

struct ProductImageView: View {
    var dimension: CGFloat = 150
    var model: ProductItemModel
    
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: .bottomLeading) {
                    Image(model.image, bundle: nil)
                        .resizable()
                        .cornerRadius(24)
                    ProductTextView(model: model)
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "heart")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding()
                        }
                        Spacer()
                    }
                }
            }
            .shadow(radius: 2)
            .frame(width: dimension, height: dimension)
        }
        
    }
}

#Preview {
    ProductImageView(model: ProductItemModel(image: "biryani", offerTitle: "15% OFF", offerSubTitle: "UPTO ₹100"))
}

struct ProductTextView: View {
    var model: ProductItemModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(model.offerTitle)
                .font(.system(size: 16, weight: .heavy))
                .foregroundStyle(.white)
            
            Text(model.offerSubTitle)
                .font(.system(size: 12, weight: .bold))
                .foregroundStyle(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [.clear, .black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(16, corners: [.bottomLeft, .bottomRight])
        )
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
