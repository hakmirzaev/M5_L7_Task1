//
//  SignUpScreen.swift
//  M5_L7_Task1
//
//  Created by Bekhruz Hakmirzaev on 27/11/22.
//

import SwiftUI

struct SignUpScreen: View {
    @Environment(\.presentationMode) var presentation
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    var body: some View {
        VStack{
            Spacer()
            TextField("Firstname", text: $firstname).frame(height: 45).padding(.leading, 10)
                .background(Color(.systemGray5))
                .cornerRadius(30)
            TextField("Lastname", text: $lastname).frame(height: 45).padding(.leading, 10)
                .background(Color(.systemGray5))
                .cornerRadius(30)
            TextField("Email", text: $email).frame(height: 45).padding(.leading, 10)
                .background(Color(.systemGray5))
                .cornerRadius(30)
            TextField("Address", text: $address).frame(height: 45).padding(.leading, 10)
                .background(Color(.systemGray5))
                .cornerRadius(30)
            SecureField("Password", text: $password).frame(height: 45).padding(.leading, 10)
                .background(Color(.systemGray5))
                .cornerRadius(30)
            Button(action: {
                
            }, label: {
                HStack{
                    Spacer()
                    Text("Sign In").foregroundColor(.white)
                    Spacer()
                }
                    .frame(height: 45)
                    .background(.red)
                    .cornerRadius(30)
            })
            Spacer()
            HStack{
                Text("Already have an account?").foregroundColor(.blue)
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    Text("SignIn").font(.system(size: 18))
                })
            }
        }.padding()
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
