//
//  ContentView.swift
//  LoginScreenSwiftUI
//
//  Created by yaswanth reddy on 6/18/26.
//

import SwiftUI

struct ContentView: View {

    @State private var email = ""
   @State private var password = ""
   
   var body: some View {
       ZStack {
           // Background gradient
//           LinearGradient(
//               gradient: Gradient(colors: [
//                   Color(red: 0.1, green: 0.2, blue: 0.5),
//                   Color(red: 0.2, green: 0.3, blue: 0.7)
//               ]),
//               startPoint: .topLeading,
//               endPoint: .bottomTrailing
//           )
           Color(#colorLiteral(red: 0, green: 0.7840057015, blue: 0.9120769501, alpha: 0.4060154754))
           .ignoresSafeArea()
           
           VStack(spacing: 24) {
               // Header
               VStack(spacing: 8) {
                   Text("Welcome Back")
                       .font(.system(size: 32, weight: .bold))
                       .foregroundColor(.white)
                   
                   Text("Sign in to your account")
                       .font(.system(size: 16, weight: .regular))
                       .foregroundColor(.white.opacity(1))
               }
               .frame(maxWidth: .infinity, alignment: .leading)
               .padding(.bottom, 16)
               
               // Email Field
               HStack(spacing: 12) {
                   Image(systemName: "envelope.fill")
                       .foregroundColor(.gray.opacity(0.6))
                   
                   TextField("Email", text: $email)
                       .textInputAutocapitalization(.never)
                       .keyboardType(.emailAddress)
                       .foregroundColor(.white)
               }
               .padding(12)
               .background(Color.white.opacity(0.15))
               .cornerRadius(8)
               
               // Password Field
               HStack(spacing: 12) {
                   Image(systemName: "lock.fill")
                       .foregroundColor(.gray.opacity(0.6))
                   
                   SecureField("Password", text: $password)
                       .foregroundColor(.white)
               }
               .padding(12)
               .background(Color.white.opacity(0.15))
               .cornerRadius(8)
               
               Spacer()
               
               // Login Button
               Button(action: {}) {
                   Text("Sign In")
                       .font(.system(size: 16, weight: .semibold))
                       .frame(maxWidth: .infinity)
                       .padding(14)
                       .background(Color.white)
                       .foregroundColor(Color(red: 0.1, green: 0.2, blue: 0.5))
                       .cornerRadius(8)
               }
               
               // Sign Up Link
               HStack(spacing: 4) {
                   Text("Don't have an account?")
                       .font(.system(size: 14, weight: .regular))
                   Text("Sign Up")
                       .font(.system(size: 14, weight: .semibold))
               }
               .foregroundColor(.white)
               
           }
           .padding(24)
       }
   }

}

#Preview {
    ContentView()
}
