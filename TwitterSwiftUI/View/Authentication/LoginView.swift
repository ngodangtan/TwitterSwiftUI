//
//  LoginView.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 19/01/2021.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("twitter-logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220, height: 100)
                        .padding(.top,88)
                        .padding(.bottom,32)
                    
                    VStack(spacing: 20) {
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelop")
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
                    
                    HStack {
                        Spacer()
                        Button(action: {  }, label: {
                            Text("Forgot Password?")
                                .font(.footnote)
                                .bold()
                                .foregroundColor(.white)
                                .padding(.top, 16)
                                .padding(.trailing, 32)
                        })
                    }
                    
                    Button(action: {  }, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 360, height: 50)
                            .background(Color.white)
                            .clipShape(Capsule())
                            .padding()
                    })
                    Spacer()
                    NavigationLink(
                        destination: RegistrationView().navigationBarBackButtonHidden(true),
                        label: {
                            HStack {
                                Text("Don't have an account?")
                                    .font(.system(size: 14))
                                
                                Text("Sign Up")
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
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
