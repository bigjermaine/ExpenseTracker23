//
//  GroupRow.swift
//  Assignment2
//
//  Created by Apple on 28/09/2022.
//

import SwiftUI

struct GroupRow: View {
    var assignment:Assignments
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "person.crop.circle.fill.badge.checkmark")
                    .foregroundStyle(.blue, .blue.opacity(0.3))
                    .font(.largeTitle)
                
                
                Text(assignment.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
                
                Spacer()
                VStack(alignment:.leading){
                    Text(assignment.time)
                        .fontWeight(.light)
                        .opacity(0.5)
                    
                }
                .frame(width:180 ,alignment: .leading)
            }
            .padding(.leading,6)
            .padding(.bottom, 20)
        }
      
    }
}

struct GroupRow_Previews: PreviewProvider {
    static var previews: some View {
        GroupRow(assignment:  assigments[1])
    }
}
