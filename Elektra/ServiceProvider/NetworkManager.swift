//
//  NetworkManager.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import Foundation

class NetworkManager
{
    static let shared = NetworkManager()
    
    private init() {
        
    }
    
    func getFindList( completion : @escaping ( Result<[Product], NetworkError> ) -> Void )
    {
        guard let url = URL( string: Resource.URLBASE.description ) else
        {
            completion( .failure( .invalidURL ) )
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            
            guard let data = data else {
                return completion( .failure(.invalidData) )
            }
            
            do
                {
                    let decoder = JSONDecoder()
                    let decodeResponse  =   try decoder.decode(BaseResponse<ProductList>.self, from: data)
                    
                    if let response = decodeResponse.result?.products {
                        completion( .success( response )  )
                    } else {
                        completion( .failure( .invalidResponse ))
                    }
                }
            
            catch  {
                print( "Debug error : \( error.localizedDescription )" )
                completion( .failure( .decodingError ) )
            }
        }
        
        task.resume()
    }//end func getFindList
}//end class NetworkManager
