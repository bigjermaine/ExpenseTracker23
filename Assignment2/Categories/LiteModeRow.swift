//
//  LiteModeRow.swift
//  Assignment2
//
//  Created by Apple on 28/09/2022.
//
//

import SwiftUI

struct LiteModeView: View {
    @AppStorage  ("islitemode") var islitmode:Bool =  false
    var body: some View {
        Toggle(isOn: $islitmode, label: {
            VStack(alignment: .leading, spacing:12){
                Text("litemode")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                
                Text("better perfromance for iphonex and older")
                    .font(.caption2)
                    .opacity(0.7)
            }
            
        })
        .toggleStyle(SwitchToggleStyle(tint: .red))
        .padding(.horizontal,10)
    }
}

struct LiteModeView_Previews: PreviewProvider {
    static var previews: some View {
        LiteModeView()
    }
}
