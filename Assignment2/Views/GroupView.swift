//
//  GroupView.swift
//  Assignment2
//
//  Created by Apple on 28/09/2022.
//
import SwiftUI

struct GroupView: View {
    @EnvironmentObject  var assignmentmanager :AssignmentManager
    
   
    @Environment(\.dismiss) var dismiss
    var body: some View {
  
           

                   ScrollView {
                       ForEach(assignmentmanager.assignment, id: \.id ) {
                           assigments in
                          NavigationLink(destination:ProfileView(assignments: assigments)) {
                               GroupRow(assignment: assigments).foregroundColor(.black)                            }
                        }                    }                  .padding(.horizontal,5)
                        
                    
                
            
            
           
        
        
     
            
        }
    }


struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView().environmentObject(AssignmentManager())
    }
}
