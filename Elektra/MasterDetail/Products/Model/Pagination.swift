//
//  Pagination.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import Foundation

struct Pagination : Codable 
{
    public var page         : Int?
    public var totalPages   : Int?
    public var totalRecords : Int?
    public var totalRecordsPage : Int?
    
    enum CodingKeys : String, CodingKey 
    {
        case page           =   "pagina"
        case totalPages     =   "totalPaginas"
        case totalRecords   =   "totalRegistros"
        case totalRecordsPage   =   "totalRegistrosPorPagina"
    }
}
