//
//  Messaging.swift
//  CampusConnect
//
//  Created by John Edgar on 2/19/23.
//

import SwiftUI

struct Messaging: View {
    var product: Product
    
    @State private var newMessage = ""
    @State private var messages: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                List(messages, id: \.self) { message in
                    Text(message)
                }
                .padding(.bottom, 60)
                
                HStack {
                    TextField("Type your message", text: $newMessage)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    Button(action: sendMessage) {
                        Text("Send")
                    }
                    .padding(.trailing)
                }
                .frame(height: 60)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding()
            }
            .navigationBarItems(leading:
                HStack(spacing: 8) {
                    Image(product.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(product.name)
                            .font(.headline)
                            .foregroundColor(.primary)
                        
                        Text("$\(product.Price)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                },
                trailing: HStack(spacing: 2) {
                    Text("User")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Button(action: {
                        // Handle profile logo button tap
                        print("Profile logo button tapped")
                    }) {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
            )
            .navigationBarTitle("", displayMode: .inline)
        }
    }
    
    func sendMessage() {
        if !newMessage.isEmpty {
            messages.append(newMessage)
            newMessage = ""
        }
    }
}







struct Messaging_Previews: PreviewProvider {
    static var previews: some View {
        Messaging(product: productList[0])
    }
}
