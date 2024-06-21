//
//  NetworkError.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import Foundation

enum NetworkError : Error
{
    case invalidURL
    case unableToComplete
    case invalidResponse
    case invalidData
    case decodingError
}
