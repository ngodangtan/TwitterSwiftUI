//
//  RegistrationView.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 19/01/2021.
//

import SwiftUI

struct RegistrationView: View {
    @State var email = ""
    @State var password = ""
    @State var fullname = ""
    @State var username = ""
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        ZStack {
            VStack {
                Image("plus_photo")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFill()
                    .frame(width: 140, height: 140)
                    .padding(.top,88)
                    .padding(.bottom,16)
                    .foregroundColor(.white)
                
                VStack(spacing: 20) {
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelop")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
               
                        .foregroundColor(.white)
                    
                    CustomTextField(text: $fullname, placeholder: Text("Full Name"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
               
                        .foregroundColor(.white)
                    
                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
               
                        .foregroundColor(.white)
                    
                    CustomSecureField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                     
                        .foregroundColor(.white)
                }
                .padding(.horizontal,32)
                
           
                
                Button(action: {  }, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 360, height: 50)
                        .background(Color.white)
                        .clipShape(Capsule())
                        .padding()
                })
                Spacer()
        
                Button(action: { mode.wrappedValue.dismiss() }, label: {
                    HStack {
                        Text("Already have an acoount?")
                            .font(.system(size: 14))
                        
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                        
                    }.foregroundColor(.white)
                    .padding(.bottom, 40)
                })
                
                
             
                    
            }
        }
        .background(Color(#colorLiteral(red: 0.1119716689, green: 0.6307634115, blue: 0.9512073398, alpha: 1)))
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
