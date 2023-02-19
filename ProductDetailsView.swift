//
//  ProductDetailsView.swift
//  test
//
//  Created by Mostafa Elshenawy on 2/18/23.
//

import SwiftUI

struct ProductDetailsView: View {
    var product: Product
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding(.top)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(product.name)
                        .font(.title)
                        .bold()
                        .padding(.horizontal)
                    
                    Text("$\(product.price)")
                        .font(.title2)
                        .foregroundColor(.red)
                        .padding(.horizontal)
                    
                    Text(product.description)
                        .font(.body)
                        .foregroundColor(.gray)
                        .lineLimit(nil)
                        .padding(.horizontal)
                    
                    Spacer()
                }
            }
            .padding(.top)
            .navigationBarTitleDisplayMode(.inline)
            
            Spacer()
            
            VStack(spacing: 20) {
                NavigationLink(destination: Messaging(product: product)) {
                    Text("Message User")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .frame(height: 50)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            }
            .padding()
        }
    }
}






struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: productList[0])
    }
}
