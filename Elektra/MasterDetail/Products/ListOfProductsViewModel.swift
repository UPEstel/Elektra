//
//  ListOfProductsViewModel.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import Foundation

class ListOfProductsViewModel : ObservableObject 
{
    @Published var products :   Array<Product> = []
    @Published var productToSearch :   Array<Product> = []
    @Published var productDetail   :   Product?
    
    init() {
        //getListProducts()
    }
    
    func getListProducts() 
    {
        NetworkManager.shared.getFindList { result in
            DispatchQueue.main.async 
            {
                switch result
                {
                    case .success( let products ) :
                        self.products           = products
                        self.productToSearch    = products
                    
                    case .failure( let error ) :
                        print( "Error: \( error.localizedDescription )" )
                }
            }
        }
    }
    
    func filterProduct( arg name : String ) 
    {
        if !name.isEmpty
        {
            productToSearch = products.filter({ product in
                product.name!.lowercased().contains( name.lowercased() )
            })
        } else {
            productToSearch = products
        }
    }
}
