//
//  SignInScreen.swift
//  M5_L7_Task1
//
//  Created by Bekhruz Hakmirzaev on 27/11/22.
//

import SwiftUI

struct SignInScreen: View {
    @State var showPresent = false
    @State var userid = ""
    @State var userpw = ""
    var body: some View {
        VStack{
            Spacer()
            Image("person").resizable()
                .frame(width: 100,height: 100)
            TextField("User ID", text: $userid).frame(height: 45).padding(.leading, 10)
                .background(Color(.systemGray5))
                .cornerRadius(30)
            SecureField("User PW", text: $userpw).frame(height: 45).padding(.leading, 10)
                .background(Color(.systemGray5))
                .cornerRadius(30)
            Button(action: {
                UserDefaults.standard.setValue(true, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
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
                Text("Don't have an account?").foregroundColor(.blue)
                Button(action: {
                    showPresent = true
                }, label: {
                    Text("SignUp").font(.system(size: 18))
                }).sheet(isPresented: $showPresent, content: {
                    SignUpScreen()
                })
            }
        }.padding()
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
