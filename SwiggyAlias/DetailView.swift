//
//  DetailView.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 08/12/24.
//

import SwiftUI

struct DetailView: View {
    var image: String
    var title: String
    var namespace: Namespace.ID
    @Binding var show: Bool
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            VStack {
                Image(image, bundle: nil)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                    .matchedGeometryEffect(id: image, in: namespace)
                
                Text(title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .frame(alignment: .leading)
                
                Spacer()
            }
            HStack {
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 32, height: 32)
                        .opacity(0.7)
                    
                    Image(systemName: "chevron.left")
                        .font(.system(size: 24))
                        .padding()
                        .onTapGesture {
                            withAnimation(.spring()) {
                                show.toggle()
                            }
                        }
                }

                Spacer()
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 32, height: 32)
                        .opacity(0.7)
                    
                    Image(systemName: "suit.heart")
                        .font(.system(size: 24))
                        .padding()
                        .clipShape(Circle())
                }
                
            }
            .padding(.top, 10)
            .padding(.horizontal, 16)
        }
        .background(ignoresSafeAreaEdges: .all)
    }
}
