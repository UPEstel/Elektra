//
//  ContentView.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import SwiftUI

struct ContentView: View 
{
    @StateObject private var viewModel = ListOfProductsViewModel()
    
    var body: some View
    {
        NavigationView 
        {
            VStack
            {
                Image(uiImage: UIImage( named: "Elektra" )!).padding(30)
                
                Text( #"Press "Get products" for information"# )
                    .font(.body)
            
                Button {
                    self.viewModel.getListProducts()
                } label: {
                    NavigationLink(destination: ListOfProductsView(arg: self.viewModel))
                    {
                        Text("Get products")
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.red, lineWidth: 1)
                            )
                            .foregroundColor( .red )
                            .fontDesign( .monospaced )
                            .font(.body)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
