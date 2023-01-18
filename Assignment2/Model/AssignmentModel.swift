//
//  AssignmentModel.swift
//  Assignment2
//
//  Created by Apple on 28/09/2022.
//


import Foundation

struct Assignments: Identifiable,Encodable{
    var id:String
    var name: String
    var phonenumber:String
    var username:String
    var email:String
    var dateofbirth:String
    var time:String
}


var assigments = [
    Assignments( id: "1", name: "jermaine", phonenumber: "08140135275", username: "james", email: "danieljermaine1@gmail.com", dateofbirth: "kelvin", time: "wwww"),
    Assignments(  id: "2", name: "daniel", phonenumber: "08140135275", username: "james", email: "danieljermaine1@gmail.com", dateofbirth: "kelvin", time: "wwww"),
    Assignments(  id: "3", name: "prince", phonenumber: "08140135275", username: "james", email: "danieljermaine1@gmail.com", dateofbirth: "kelvin", time:"qqqqq")
]
