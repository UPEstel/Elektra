//
//  Product.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import Foundation

struct Product  : Codable, Hashable
{
    public var id : String?
    public var categoryCode : String?
    public var name : String?
    public var image: [ String ]?
    public var price: Float?
    
    enum CodingKeys : String, CodingKey 
    {
        case id = "id"
        case categoryCode   = "codigoCategoria"
        case name   = "nombre"
        case image  = "urlImagenes"
        case price  = "precioFinal"
    }
}
