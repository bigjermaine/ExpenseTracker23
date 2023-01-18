//
//  ProfileView.swift
//  Assignment2
//
//  Created by Apple on 28/09/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage ("islitemode") var islitmode:Bool =  false
    
    var assignments:Assignments
    var body: some View {
        VStack{
            VStack{
                Image(systemName: "person.crop.circle.fill.badge.checkmark")
                    .foregroundStyle(.blue, .blue.opacity(0.3))
                    .font(.largeTitle)
                
                Text(assignments.username)
                    .font(.largeTitle)
            }
            .frame(maxWidth:.infinity,maxHeight:100)
            .background(islitmode ? .white : .blue)
            
           
        
            List  {
                HStack(spacing:10){
                    Text("Name:")
                    Text(assignments.name)
                }
                HStack(spacing:10){
                    Text("Email:")
                    Text(assignments.email)
                }
                HStack(spacing:10){
                    Text("DateofBirth:")
                    Text(assignments.dateofbirth)
                }
                HStack(spacing:10){
                    Text("phonenumber:")
                    Text(assignments.phonenumber)
                }
                LiteModeView()
                    
            }
            
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(assignments:assigments[1])
    }
}
