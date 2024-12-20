import SwiftUI

struct HorizontalCollectionView<Item: Identifiable, Content: View>: View {
    var items: [Item]
    var rows: [GridItem]
    var columns: Int = 3
    let content: (Item) -> Content
    var isScrollEnabled: Bool
    var showTabs: Bool
    var viewModel: ProductViewModel
    
    init(
        items: [Item],
        rows: [GridItem] = [GridItem(.fixed(150))],
        isScrollEnabled: Bool = false,
        showTabs: Bool = false,
        viewModel: ProductViewModel,
        @ViewBuilder content: @escaping (Item) -> Content
    ) {
        self.items = items
        self.rows = rows
        self.isScrollEnabled = isScrollEnabled
        self.showTabs = showTabs
        self.viewModel = viewModel
        self.content = content
    }
    
    var body: some View {
        if showTabs {
            TabWidgetView(viewModel: viewModel)
        }
        
        Group {
            if isScrollEnabled {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 12) {
                        ForEach(items) { item in
                            content(item)
                        }
                    }
                    .padding(.horizontal)
                }
            } else {
                LazyHGrid(rows: rows, spacing: 12) {
                    ForEach(items) { item in
                        content(item)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

//#Preview {
//    HorizontalCollectionView(
//        items: ProductViewModel().productsHorizontal,
//        rows: [
//            GridItem(.fixed(200)), // Row 1
//            GridItem(.fixed(200))  // Row 2
//        ],
//        viewModel: ProductViewModel()
//    ) { item in
//        VerticalProductView(dimension: CGFloat((UIScreen.main.bounds.width - 56) / 3), model: ProductViewModel().productsVertical[0])
//    }
//}
