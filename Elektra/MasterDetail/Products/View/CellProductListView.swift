//
//  CellProductListView.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import SwiftUI

struct CellProductListView: View 
{
    private var product : Product?
    
    init ( arg product : Product ) {
        self.product = product
    }
    
    var body: some View
    {
        ZStack {
            
            Rectangle()
                .foregroundColor(.gray)
                .cornerRadius(12)
            
            VStack
            {
                AsyncImage(url: URL( string: self.product?.image?[0] ?? "" )) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(6)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 150, height: 150)
                .shadow(radius: 12)
                
                Text( product?.name ?? "" )
                    .font( .body )
                    .foregroundStyle( .white )
                    .padding(10)
            }
        }
    }
}


#Preview {
    CellProductListView(arg: Product(
                                id: "31045268",
                                categoryCode: "TL",
                                name: "Motorola Moto G60 128GB Desbloqueado -Plateado",
                                image:[
                                    "https://elektraqa.vteximg.com.br/arquivos/ids/1141224/31045268.jpg?v=637708796606670000"],
                                price: 7499.0))
}
