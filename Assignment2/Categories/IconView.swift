//
//  IconView.swift
//  Assignment2
//
//  Created by Apple on 28/09/2022.
//

import SwiftUI

struct IconView: View {
    @Binding var name:String
    @Binding var username:String
    @Binding var dateofbirth:String
    @Binding var password:String
    @Binding var phonenumber:String
    @Binding var email:String
    @EnvironmentObject var assignmentmanager : AssignmentManager
    
    var body: some View {
        VStack(spacing:40){
            HStack(spacing:3){
                Image(systemName: "person.fill")
                    
                     
                TextField("username", text:$name )
                   
                  
            }
            HStack{
                Image(systemName: "person.badge.key")
                TextField("username", text:$username )
                   
            }
            HStack{
                Image(systemName: "person.crop.circle.badge.clock")
                TextField("dateofbirth", text:$dateofbirth )
                
            }
            HStack{
                Image(systemName: "key")
                TextField("password", text:$password)
            }
            HStack{
                Image(systemName: "phone.circle.fill")
                TextField("phonenumber", text:$phonenumber)
            }
            HStack{
                Image(systemName: "mail.fill")
                TextField("email", text:$email)
            }
        }
        .padding(.leading)
        .autocapitalization(.none)
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(name: .constant("name"),username: .constant("usernmae"),dateofbirth: .constant("dateofbirth"), password: .constant("password"),phonenumber: .constant("phonenumber"),email: .constant("email"))
    }
}
