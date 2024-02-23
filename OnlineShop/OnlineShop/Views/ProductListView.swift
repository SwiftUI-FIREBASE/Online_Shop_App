//
//  ProductListView.swift
//  OnlineShop
//
//  Created by  on 23/2/24.
//

import SwiftUI

struct ProductListView: View {
    var list: [Product]
    var body: some View {
        NavigationSplitView{
            ZStack{
                List(list){ current in
                    NavigationLink{
                        ContentView()
                    } label: {
                        ProductRowView(producto: current)
                    }
                }
            }
            
            
            .navigationTitle("Ciudades")
            
        }detail: {
            Text("Select Ciudad")
            
        }
    }
}

var productos = MockData.products
#Preview {
    ProductListView(list: productos)
}
