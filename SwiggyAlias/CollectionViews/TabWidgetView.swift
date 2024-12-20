//
//  TabsView.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 08/12/24.
//

import SwiftUI

struct TabWidgetView: View {
    @ObservedObject var viewModel: ProductViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach($viewModel.tabs) { tab in
                    Text(tab.title.wrappedValue)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(
                            viewModel.selectedCategory == tab.category.wrappedValue
                            ? Color.black
                            : Color.white
                        )
                        .foregroundStyle(
                            viewModel.selectedCategory == tab.category.wrappedValue ? Color.white : Color.black
                        )
                        .cornerRadius(16)
                        .onTapGesture {
                            withAnimation {
                                viewModel.selectedCategory = tab.category.wrappedValue
                            }
                        }
                        .overlay {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.black, lineWidth: 1)
                        }
                }
            }
            .padding(.horizontal)
        }
        .frame(height: 58)
    }
}


struct FilterTabWidgetView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                
                HStack {
                    Text("Filters")
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .cornerRadius(16)
                    
                    Image(systemName: "slider.horizontal.3")
                    
                    Spacer()
                }
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.black, lineWidth: 1)
                }
                
                
                HStack {
                    Text("Sort by")
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .cornerRadius(16)
                    
                    Image(systemName: "chevron.down")
                    
                    Spacer()
                }
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.black, lineWidth: 1)
                }
            }
            .padding(.horizontal)
        }
        .frame(height: 58)
    }
}
