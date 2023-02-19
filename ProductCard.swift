//
//  ProductCard.swift
//  CampusConnect
//
//  Created by John Edgar on 2/19/23.
//

import SwiftUI

struct Product_Card: View {
    var product: Product
    
    var body: some View {
        NavigationLink(destination: ProductDetailsView(product: product)){
            ZStack(alignment: .topTrailing) {
                ZStack(alignment: .bottom) {
                    Image(product.image)
                        .resizable()
                        .cornerRadius(20)
                        .frame(width: 180)
                        .scaledToFit()
                    
                    VStack(alignment: .leading) {
                        Text(product.name)
                            .bold()
                        
                        Text("$\(product.Price)")
                            .font(.caption)
                    }
                    .padding()
                    .frame(width: 180, alignment: .leading)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                    
                    HStack {
                        Spacer()
                        Text("#\(product.Tags)")
                            .font(.caption)
                            .padding(.vertical, 16)
                    }
                }
                .frame(width: 180, height: 250)
                .shadow(radius: 3)
            }
        }
    }
}



struct Product_Card_Previews: PreviewProvider {
    static var previews: some View {
        Product_Card(product: productList[0])
    }
}

