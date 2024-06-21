//
//  ListOfProductsView.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import SwiftUI

struct ListOfProductsView: View 
{
    @ObservedObject var viewModel : ListOfProductsViewModel
    
    @State private var productToSearch : String = ""
    @State private var isPresenting: Bool = false
    
    private let numberOfColumns = [
        GridItem( .flexible()),
        GridItem( .flexible())
    ]
    
    init( arg viewModel : ListOfProductsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View
    {
        ScrollView
        {
            LazyVGrid( columns: numberOfColumns ) {
                ForEach( viewModel.productToSearch, id: \.self ) {  product in
                    
                    NavigationLink {
                        ProductDetailView(arg: product )
                    } label: {
                        CellProductListView( arg: product )
                    }
                }
            }
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        .background(Color(hex: "#CDC8C7"))
    
        .searchable(text: $productToSearch, prompt: "Busca tu producto")
        .onChange(of: productToSearch, { oldValue, newValue in
            withAnimation {
                self.viewModel.filterProduct(arg: newValue)
            }
        })
        
        .navigationTitle("Productos")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

#Preview {
    ListOfProductsView( arg : ListOfProductsViewModel() )
}
