//
//  AssignmentManager.swift
//  Assignment2
//
//  Created by Apple on 28/09/2022.
//


import Foundation

import FirebaseFirestore
import FirebaseFirestoreSwift

class AssignmentManager: ObservableObject {
    
    
    @Published var assignment: [Assignments] = []
    
    let db = Firestore.firestore()
   
    
init() {
        
      getassignment()
        
}
    func getassignment() {
      
        
        
        
        db.collection("assignment").getDocuments() { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                if let querySnapshot = querySnapshot {
                    for document in querySnapshot.documents {
                        let data = document.data()
                        
                        let id = data["id"] as? String ?? ""
                        let name = data["name"] as? String ?? ""
                        let phonenumber = data["phonenumber"] as? String ?? ""
                        let username = data["username"] as? String ?? ""
                        let email = data["email"] as? String ?? ""
                        let dateofbirth = data["dateofbirth"] as? String ?? ""
                        let dateValue = (data["time"] as AnyObject).dateValue()
                        let time = dateValue.formatDate()
                        
                        let assignments = Assignments(id: id, name: name, phonenumber: phonenumber, username: username, email: email, dateofbirth: dateofbirth, time:time)
                        
                        self.assignment.append(assignments)
                    }
                }
                
            }
        }
    }
    
       func postassignment(name:String,phonenumber:String,username:String,email:String,dateofbirth:String)   {
                do {
    
                  let newAssignment = Assignments(id: "\(UUID())", name: name, phonenumber: phonenumber, username: username, email:email, dateofbirth: dateofbirth, time: Date().formatDate2())
                   try db.collection("assignment").document().setData(from:newAssignment)            } catch {
                   print("Error adding message to Firestore: \(error)")
              }
    
    
    
       }
 }


