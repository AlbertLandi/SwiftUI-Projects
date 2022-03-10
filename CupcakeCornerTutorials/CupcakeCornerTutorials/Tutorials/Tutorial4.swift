//
//  Tutorial4.swift
//  CupcakeCornerTutorials
//
//  Created by Alberto Landi Cortiñas on 3/9/22.
//

import SwiftUI

struct Tutorial4: View {
    @State private var username = ""
    @State private var email = ""
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        Text("Enter your Username:")
                        TextField("Username", text: $username)
                        Text("Enter your E-mail:")
                        TextField("E-mail", text: $email)
                    }
                    Section {
                        Text("Don't have an account?")
                            .font(.headline)
                        Button("Create account") {
                            print("creating account...")
                            showAlert = true
                        }
                        .disabled(disableForm)
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("Creating account"), message: Text("Please stand by..."))
                        }
                    }
                }
            }
            .navigationTitle("Log in")
        }
    }
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }
}

struct Tutorial4_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial4()
    }
}
