//
//  Resource.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import Foundation

enum Resource 
{
    case URLBASE
}

extension Resource 
{
    var description: String 
    {
        switch self 
        {
            case .URLBASE:
                return "http://alb-dev-ekt-875108740.us-east-1.elb.amazonaws.com/sapp/productos/plp/1/ad2fdd4bbaec4d15aa610a884f02c91a"
        }
    }
}
