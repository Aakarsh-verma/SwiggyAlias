

//
//  ContentView.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 07/12/24.
//

import SwiftUI

import SwiftUI

struct HeaderOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct HomeContentView: View {
    @StateObject var productViewModel = ProductViewModel()
    @State private var headerOffset: CGFloat = 0
    @State private var isRefreshing: Bool = false
    @State private var pullOffset: CGFloat = 0
    @State var showNavigation: Bool = false
    @State var selected: ProductModel = ProductViewModel().productsGrid[0]
    @Namespace private var namespace

    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Spacer()
                ScrollView {
                    GeometryReader { geometry in
                        Color.clear
                            .preference(key: HeaderOffsetPreferenceKey.self, value: geometry.frame(in: .global).minY)
                            .onPreferenceChange(HeaderOffsetPreferenceKey.self) { offset in
                                handleScroll(offset)
                            }
                    }
                    .frame(height: 120)
                    
                    contentSections
                }
            }
            header
                .offset(y: headerOffset)
                .animation(.spring(response: 0.4, dampingFraction: 0.7), value: headerOffset)
            
            if isRefreshing {
                pullToRefreshLoader
            }
            
            if showNavigation {
                DetailView(image: selected.item.image, title: selected.restaurantDescription.restaurantName, namespace: namespace, show: $showNavigation)
                    .matchedGeometryEffect(id: selected.id, in: namespace)
            }
        }
    }

    var header: some View {
        StickyHeaderView()
            .padding(.horizontal)
    }

    var contentSections: some View {
        VStack(spacing: 16) {
            horizontalBanners
            
            SectionHeaderView(title: "For You")
            gridItems
            
            BannerImageView(model: productViewModel.banners[0])
                .padding(.vertical, 5)
            
            SectionHeaderView(title: "BEST OFFERS")
            horizontalScrollableItems
            
            FilterTabWidgetView()
            
            VerticalProductView(dimension: CGFloat(UIScreen.main.bounds.width - 48), model: productViewModel.productBanner, hideDescription: true)
                .onTapGesture {
                    withAnimation {
                        showNavigation.toggle()
                        selected = productViewModel.productBanner
                    }
                }
                .matchedGeometryEffect(id: productViewModel.productBanner.id, in: namespace)
            
            SectionHeaderView(title: "Try these new places")
            verticalCollectionItems
        }
        .padding(.horizontal)
    }

    var horizontalBanners: some View {
        HorizontalCollectionView(
            items: productViewModel.banners,
            rows: [GridItem(.fixed(100))],
            isScrollEnabled: true,
            viewModel: productViewModel
        ) { item in
            BannerImageView(model: item)
        }
    }

    var gridItems: some View {
        HorizontalCollectionView(
            items: productViewModel.productsGrid,
            rows: [GridItem(.fixed(200)), GridItem(.fixed(200))],
            showTabs: true,
            viewModel: productViewModel
        ) { item in
            if item.category == productViewModel.selectedCategory {
                VerticalProductView(dimension: CGFloat((UIScreen.main.bounds.width - 56) / 3), model: item)
                    .onTapGesture {
                        withAnimation {
                            showNavigation.toggle()
                            selected = item
                        }
                    }
                    .matchedGeometryEffect(id: item.id, in: namespace)
            }
        }
    }

    var horizontalScrollableItems: some View {
        HorizontalCollectionView(
            items: productViewModel.productsHorizontal,
            rows: [GridItem(.fixed(120))],
            isScrollEnabled: true,
            viewModel: productViewModel
        ) { item in
            VerticalProductView(dimension: 120, model: item)
                .onTapGesture {
                    withAnimation {
                        showNavigation.toggle()
                        selected = item
                    }
                }
                .matchedGeometryEffect(id: item.id, in: namespace)
        }
    }

    var verticalCollectionItems: some View {
        VerticalCollectionView(items: productViewModel.productsVertical) { item in
            HorizontalProductView(viewModel: productViewModel, model: item)
                .onTapGesture {
                    withAnimation {
                        showNavigation.toggle()
                        selected = item
                    }
                }
                .matchedGeometryEffect(id: item.id, in: namespace)
        }
    }

    var pullToRefreshLoader: some View {
        HStack {
            Spacer()
            PullToRefreshSpinnerView()
                .frame(width: 24, height: 24)
                .offset(y: 130)
            Spacer()
        }
        .padding()
    }

    private func handleScroll(_ newOffset: CGFloat) {
        let delta = newOffset - pullOffset
        pullOffset = newOffset
        
        if delta > 0 {
            headerOffset = min(headerOffset + delta, 0)
        } else if delta < 0 {
            if newOffset < -50 {
                headerOffset = max(headerOffset + delta, -200)
            } else {
                headerOffset = 0
            }
        }
        
        if pullOffset > 80 && !isRefreshing {
            triggerPullToRefresh()
        }
    }

    private func triggerPullToRefresh() {
        isRefreshing = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            // Simulate page refresh
            isRefreshing = false
        }
    }
}

#Preview {
    HomeContentView()
}
