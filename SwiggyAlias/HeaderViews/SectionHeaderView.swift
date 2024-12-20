//
//  SectionHeaderView.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 07/12/24.
//

import SwiftUI

struct SectionHeaderView: View {
    var title: String = "reorder from favourites"
    var body: some View {
        HStack {
            Text(title.uppercased())
                .font(.system(size: 12))
                .lineLimit(1)
            Rectangle()
                .frame(height: 1.5)
                .padding(.trailing, 20)
                .foregroundStyle(LinearGradient(
                    gradient: Gradient(colors: [.gray, .clear]),
                    startPoint: .leading,
                    endPoint: .trailing
                ))
        }
        .padding()
    }
}

#Preview {
    SectionHeaderView()
}
