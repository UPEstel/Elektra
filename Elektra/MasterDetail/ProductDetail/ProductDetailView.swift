//
//  ProductDetailView.swift
//  Elektra
//
//  Created by Uriel Peña Estel on 20/06/24.
//

import SwiftUI

struct ProductDetailView: View 
{
    private var product : Product?
    
    init( arg product : Product? ) {
        self.product = product
        print(" \(self.product?.name ?? "") --- \(self.product?.image ?? []) ")
    }
    
    var body: some View 
    {
        VStack
        {
            Image(uiImage: UIImage( named: "Elektra" )!).padding(50)
        
            Text( "CATEGORIA: \(self.product?.categoryCode ?? "")" ).bold()
        
            AsyncImage(url: URL( string: self.product?.image?[0] ?? "" )) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(6)
            } placeholder: {
                ProgressView()
            }.frame(maxHeight: 250)
                
            HStack {
                Text( "DESCRIPCIÓN \n\(self.product?.name ?? "") " ).padding(15)
                Text( "PRECIO: $\(self.product?.price ?? 0.0)" ).bold()
            }.padding(10)
        }
    }
}

#Preview {
    ProductDetailView(arg: Product(
        id: "31045268",
        categoryCode: "TL",
        name: "Motorola Moto G60 128GB Desbloqueado -Plateado",
        image:[
            "https://elektraqa.vteximg.com.br/arquivos/ids/1141224/31045268.jpg?v=637708796606670000"],
        price: 7499.0))
}
