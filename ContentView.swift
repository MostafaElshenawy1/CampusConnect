//
//  ContentView.swift
//  CampusConnect
//
//  Created by John Edgar on 2/18/23.
//
// Listing Creation was implemented into this file
import SwiftUI
import FirebaseCore
import Firebase

import FirebaseCore
import FirebaseFirestore
import FirebaseAuth


struct ContentView: View {
    @ObservedObject var model = ViewModel()
    
        @State private var Title = ""
        @State private var Description = ""
        @State private var Price = ""
        @State private var Tags = ["Handyman", "Cleaning", "Tutoring", "Delivering"]

    var body: some View {
        
        VStack{
            List (model.list){ item in
                Text(item.Description)
                Text(item.Title)
            }
            List(model.list){
                item in Text(String(item.Price))
            }
            List(model.list){
                item in Text(item.Tags?.joined(separator: ", ") ?? "")
            }
            
            Divider()
            VStack(spacing: 5){
                TextField("Title", text: $Title)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                TextField("Description", text: $Description)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                TextField("Price", text: $Price)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                Picker("Tags", selection: $Tags) {
                    ForEach(Tags, id: \.self) { tag in
                        Text(tag)
                    }
                }
                .frame(width: 328, height: 26) // Set width and height to match the title text field
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
                
                
                Button(action: {
                    let price = Int64(Price) ?? 0
                    let tagsArray = $Tags.wrappedValue.joined(separator: ",").components(separatedBy: ",")
                    model.addData(Title: Title, Description: Description, Price: price, Tags: tagsArray)
                    
                    Title = ""
                    Description = ""
                    Price = ""
                    Tags = []
                    
                }, label: {
                    Text("Create Listing")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal)
                })
            }
            .padding(.top)
            
            Spacer()
        }
    }
    
    init() {
        model.getData()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
struct ContentView: View {
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        List (model.list){ item in
            Text(item.Description)
            Text(item.Title)
        }
       List(model.list){
            item in Text(item.Price)
        }
       List(model.list){
           item in Text(item.Tags)
        }
        //List(model.list){
       //     item in Text(item.Title)
       // }
            
          //  item in Text(item.Title)
          //  item in Text(item.Price)
          //  item in Text(item.Tags)
                         //, item.Description, item.Price, item.Tags)
    }
    init() {
        model.getData()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }*/

