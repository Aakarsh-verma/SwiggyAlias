//
//  StickyHeaderView.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 07/12/24.
//

import SwiftUI


struct StickyHeaderView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                HeaderTopSection()
            }
            HeaderSearchBar(searchText: $searchText)
        }
        .padding(.horizontal)
        .background(Color.white.shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 4))
        .frame(height: 120)
    }
}

struct HeaderTopSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "location.fill")
                    .foregroundStyle(.orange)
                
                Text("Office")
                    .fontWeight(.heavy)
                
                Image(systemName: "chevron.down")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Text("Block i, 1st floor Swiggy Embassy Tech VIllage Swiggy")
                .font(.caption)
                .foregroundColor(.gray)
                .lineLimit(1)
                .padding(.trailing, 20)
        }
        Spacer()
        Image(systemName: "person.circle.fill")
            .resizable()
            .frame(width: 35, height: 35)
            .clipped()
            .foregroundStyle(LinearGradient(
                gradient: Gradient(colors: [.gray, .black]),
                startPoint: .top,
                endPoint: .bottom
            ))
    }
}

struct HeaderSearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            TextField("Search for 'Biryani'", text: $searchText)
                .foregroundColor(.primary)
                .padding(.leading, 16)
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.gray)
            Divider()
                .frame(height: 15)
            Image(systemName: "mic.fill")
                .foregroundStyle(.orange)
                .padding(.trailing, 16)
        }
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                .frame(height: 45)
        )
        .frame(height: 45)
        .padding(.vertical)
    }
}


#Preview {
    VStack {
        StickyHeaderView()
    }
}
