//
//  Product.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import Foundation

struct ProductList  :   Codable
{
    public var pagination   : Pagination?
    public var category     : String?
    public var products     : [Product]?
    
    enum CodingKeys : String, CodingKey 
    {
        case pagination =   "paginacion"
        case category   =   "categoria"
        case products   =   "productos"
    }
}
