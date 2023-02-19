//
//  ListingCreation.swift
//  test
//
//  Created by Mostafa Elshenawy on 2/19/23.
//

import SwiftUI

struct ListingCreation: View {
    @State private var title = ""
    @State private var price = ""
    @State private var task = "Handyman"
    @State private var description = ""
    
    let tasks = ["Handyman", "Cleaning", "Tutoring", "Delivering"]
    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
            
            TextField("Price", text: $price)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
            
            Picker("Task", selection: $task) {
                ForEach(tasks, id: \.self) {
                    Text($0)
                }
            }
            .frame(width: 328, height: 26) // Set width and height to match the title text field
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal)
            
            TextEditor(text: $description)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
            
            Button(action: {
                // code for creating a listing
            }, label: {
                Text("Create Listing")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            })
            .padding(.top)
            
            Spacer()
        }
    }
}

struct ListingCreation_Previews: PreviewProvider {
    static var previews: some View {
        ListingCreation()
    }
}
