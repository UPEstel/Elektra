//
//  BaseReponse.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import Foundation

struct BaseResponse<T : Codable > : Codable
{
    public var code     : String?
    public var message  : String?
    public var folioNumber : String?
    public var warning  : String?
    public var result   : T?
    
    enum CodingKeys : String, CodingKey 
    {
        case code        = "codigo"
        case message     = "mensaje"
        case folioNumber = "folio"
        case warning     = "advertencia"
        case result      = "resultado"
    }
}


