//
//  ContentView.swift
//  Assignment2
//
//  Created by Apple on 28/09/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var assignmentmanager = AssignmentManager()
    
   
    @AppStorage ("islitemode") var islitmode:Bool =  false
    
    @State var name:String = ""
    @State var username:String = ""
    @State var dateofbirth:String = ""
    @State var password:String = ""
    @State var phonenumber:String = ""
    @State var email:String = ""
    @State var signupToggle:Bool = false
    @State private var rotationAngle = 0.0
    @State private var groupView: Bool = false
    @State var drag = CGFloat.self
    @State var viewstate = CGSize.zero
   
    var body: some View {
       NavigationView {
            ZStack{
               
                if !islitmode {
                    LinearGradient(colors: [.blue,.white,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .ignoresSafeArea()
                    
                }
                
                ZStack{
                   
                    
                        Spacer()
                        HStack{
                            LiteModeView()
                            Button {
                                
                                signupToggle.toggle()
                               
                            }
                        label:{
                            
                            Text(
                                
                                
                                signupToggle ? "CreateAccount" : "signin")
                                .font(.title)
                                .bold()
                                .foregroundColor(.black)
                                .padding(10)
                        }
                                .overlay (
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(LinearGradient(colors: [.blue,.red,.red], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    
                                    
                                    
                                )
                        }
                        .frame(height:70)
                        .frame(maxHeight:.infinity,alignment: .top)
                        
                    .padding(.horizontal,5)
                    
                }
                .frame(maxWidth:.infinity,alignment: .trailing)
                .rotation3DEffect(
                    Angle(degrees: self.rotationAngle),
                    axis: (x: 0.0, y: 1.0, z: 0.0))
                VStack {
                    VStack(alignment:.leading,spacing: 10){
                        if signupToggle {
                            IconView(name: $name, username: $username, dateofbirth: $dateofbirth, password: $password, phonenumber: $phonenumber, email: $email)
                                .padding(.vertical,10)
                        } else {
                            VStack(spacing:40) {
                                HStack{
                                    Image(systemName: "person.badge.key")
                                    TextField("username", text:$username)
                                }
                               
                                HStack{
                                    
                                    Image(systemName: "key")
                                    TextField("password", text:$password)
                                }
                                
                            }
                            .padding(.leading,20)
                            .padding(.vertical,10)
                           
                        }
                        
                    }
                    .overlay (
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(LinearGradient(colors: [.blue,.red,.red], startPoint: .topLeading, endPoint: .bottomTrailing)))
                    .mask(
                        LinearGradient(colors: [.blue,.red,.red], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .background(.ultraThinMaterial)
                    .cornerRadius(25)
                    .padding(.horizontal,20)
                    
                    HStack{
                        
                        Button {
                            assignmentmanager.postassignment(name: name, phonenumber: phonenumber, username: username, email: email, dateofbirth: dateofbirth)
                            name = ""
                            phonenumber = ""
                            username = ""
                            email = ""
                            dateofbirth = ""
                            print("")
                        }
                    label:{
                        Text("next")
                            .font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .padding(10)
                     }
                    }
                    .frame(width:300)
                    .overlay (
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(LinearGradient(colors: [.blue,.red,.red], startPoint: .topLeading, endPoint: .bottomTrailing)))
                    .background(.ultraThinMaterial)
                    
                    .cornerRadius(25)
                    .offset(x:viewstate.width,y: viewstate.height)
                    
                    .gesture(
                        DragGesture().onChanged{
                            value in
                           viewstate = value.translation
                        }
                            .onEnded({ value in
                                viewstate = .zero
                            })
                         )
                }
                .rotation3DEffect(
                    Angle(degrees: self.rotationAngle),
                    axis: (x: 0.0, y: 1.0, z: 0.0))
                
                    }
            
            .rotation3DEffect(
                Angle(degrees: self.rotationAngle),
            axis: (x: 0.0, y: 1.0, z: 0.0))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
