//
//  VerticalCollectionView.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 07/12/24.
//

import SwiftUI

struct VerticalCollectionView<Item: Identifiable, Content: View>: View {
    var items: [Item]
    let content: (Item) -> Content
    
    init(
        items: [Item],
        @ViewBuilder content: @escaping (Item) -> Content
    ) {
        self.items = items
        self.content = content
    }

    var body: some View {
        VStack(spacing: 16) {
            ForEach(items) { item in
                content(item)
            }
        }
    }
}

