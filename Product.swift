//
//  Product.swift
//  CampusConnect
//
//  Created by John Edgar on 2/19/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var Description: String
    var Price: Int64
    var Tags: String
}

var productList = [Product(name: "Re-build my desk", image: "Desk", Description: "test description", Price: 50, Tags: "Handyman"),
                   Product(name: "Ad 2", image: "Desk", Description: "test description", Price: 1, Tags: "Deliveries"),
                   Product(name: "Ad 3", image: "Desk", Description: "test description", Price: 1, Tags: "Deliveries"),
                   Product(name: "Ad 4", image: "Desk", Description: "test description", Price: 1, Tags: "Tutoring"),
                   Product(name: "Ad 5", image: "Desk", Description: "test description", Price: 1, Tags: "Handyman"),
                   Product(name: "Ad 6", image: "Desk", Description: "test description", Price: 1, Tags: "Cleaning"),
                   Product(name: "Ad 7", image: "Desk", Description: "test description", Price: 1, Tags: "Tutoring"),
                   Product(name: "Ad 8", image: "Desk", Description: "test description", Price: 1, Tags: "Cleaning"),
                   Product(name: "Ad 9", image: "Desk", Description: "test description", Price: 1, Tags: "Tutoring"),
                   Product(name: "Ad 10", image: "Desk", Description: "test description", Price: 1, Tags: "Handyman"),
                   ]
            

