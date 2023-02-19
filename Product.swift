//
//  Ad.swift
//  test
//
//  Created by Mostafa Elshenawy on 2/18/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var price: Int
    var tag: String
}

var productList = [Product(name: "Re-build my desk", image: "Handyman", description: "test description", price: 50, tag: "Handyman"),
                   Product(name: "Benson Delivery to the Benton", image: "Deliveries", description: "test description", price: 10, tag: "Deliveries"),
                   Product(name: "Benson Delivery to Lafayet Appartments", image: "Deliveries", description: "test description", price: 7, tag: "Deliveries"),
                   Product(name: "Need Math 12 Tutoring", image: "Tutoring", description: "test description", price: 40, tag: "Tutoring"),
                   Product(name: "Fix my door frame", image: "Handyman", description: "test description", price: 35, tag: "Handyman"),
                   Product(name: "Clean my house", image: "Cleaning", description: "test description", price: 60, tag: "Cleaning"),
                   Product(name: "Chem 11 tutoring", image: "Tutoring", description: "test description", price: 20, tag: "Tutoring"),
                   Product(name: "Clean my backyard", image: "Cleaning", description: "test description", price: 15, tag: "Cleaning"),
                   Product(name: "Econ tutoring", image: "Tutoring", description: "test description", price: 5, tag: "Tutoring"),
                   Product(name: "Build me a Die table", image: "Handyman", description: "test description", price: 50, tag: "Handyman"),
                   ]
            

