//
//  ViewModel.swift
//  CampusConnect
//
//  Created by John Edgar on 2/18/23.
//

import Foundation
import Firebase
import FirebaseFirestore

import FirebaseCore
import FirebaseFirestore
import FirebaseAuth




class ViewModel: ObservableObject{
    @Published var list = [Users]()
    
    func addData(Title: String, Description: String, Price: Int64, Tags: [String]?){
        let db = Firestore.firestore()
        let tagsArray = Tags?.joined(separator: ", ")
        db.collection("Users").addDocument(data: [
            "Title": Title,
            "Description": Description,
            "Price": Int(Price),
            "Tags": tagsArray as Any
        ])
        { error in
            if let error = error {
                print("Error adding document: \(error)")
            } else {
                //print("Document added")
                self.getData()
            }
        }
    }
    
    /*
     let db = Firestore.firestore()
     db.collection("Users").addDocument(data: ["Title" : Title, "Description": Description, "Price": Price, "Tags": Tags]) { <#Error?#> in
     <#code#>
     if let error = error {
     print(error.localizedDescription)
     return
     }
     
     }
     */
    
    
    
    func getData(){
        let db = Firestore.firestore()
        db.collection("Users").getDocuments{ snapshot, error in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                DispatchQueue.main.async{
                    self.list = snapshot.documents.map { d in
                        return Users (id: d.documentID,
                                      Description: d["Description"] as? String ?? "",
                                      Price: d["Price"] as? Int64 ?? 0,
                                      Tags: d["Tags"] as? [String],
                                      Title: d["Title"] as? String ?? "")
                    }
                }
            }
        }
    }

}
/*
class ViewModel: ObservableObject{
    @Published var list = [Users]()
    
    func getData(){
        let db = Firestore.firestore()
        db.collection("Users").getDocuments{ snapshot, error in
            
            if error == nil{
                
                if let snapshot = snapshot {
                    DispatchQueue.main.async{
                    
                    self.list = snapshot.documents.map { d in
                        return Users (id: d.documentID,
                                      Description: d["Description"] as? String ?? "",
                                      Price: d["Price"] as? Int ?? Int(0.0),
                                      Tags: d["Tags"] as? Array ?? Array(),
                                      Title: d["Title"] as? String ?? "")
                    }
                }
            }
        }
            else{
                
            }
            
        }
    
        
        
    }
    
}

func addData(user: String, price: Int, description: String, title: String){
//    ___ = Firestore.firestore()

 //   db.collection()
}
*/
