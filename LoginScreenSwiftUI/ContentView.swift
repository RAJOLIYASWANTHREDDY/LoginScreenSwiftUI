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
    @State private var showPassword: Bool = false
   
   var body: some View {
       ZStack {
           // Background gradient
           Color(#colorLiteral(red: 0, green: 0.7840057015, blue: 0.9120769501, alpha: 0.4060154754))
           .ignoresSafeArea()
           
           
           VStack(spacing: 24) {
               // Header
               VStack(spacing: 5) {
                   
               Image(systemName: "person.crop.circle.fill")
//               .symbolRenderingMode(.multicolor)
                   .font(.system(size: 100))
                   .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                   
                   Text("Welcome Back")
                       .font(.system(size: 32, weight: .bold))
                       .foregroundColor(.white)
                   
                   Text("Sign in to your account")
                       .font(.system(size: 16, weight: .regular))
                       .foregroundColor(.white.opacity(1))
               }
               .frame(maxWidth: .infinity, alignment: .center)
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
               .overlay(
                   RoundedRectangle(cornerRadius: 8)
                       .stroke(Color.gray, lineWidth: 1)
               )
               
               
               // Password Field
               HStack(spacing: 12) {
                   Image(systemName: "lock.fill")
                       .foregroundColor(.gray.opacity(0.5))
                   
                   SecureField("Password", text: $password)
                       .foregroundColor(.white)
                   Button(action: {
                       self.showPassword.toggle()
                   }, label: {
                       Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                                   .foregroundColor(.gray.opacity(0.6))
   
                   })
               }
               .padding(12)
               .background(Color.white.opacity(0.15))
               .cornerRadius(8)
               .overlay(
                   RoundedRectangle(cornerRadius: 8)
                       .stroke(Color.gray, lineWidth: 1)
               )
               
//               Spacer()
               
               // Login Button
               Button(action: {}) {
                   Text("Sign In")
                       .font(.system(size: 16, weight: .semibold))
                       .frame(width: 200)
                       .padding(14)
                       .background(Color.white)
                       .foregroundColor(Color(red: 0.1, green: 0.2, blue: 0.5))
                       .cornerRadius(8)
                       .overlay(
                           RoundedRectangle(cornerRadius: 8)
                               .stroke(Color.gray, lineWidth: 1)
                       )
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
    
//import SwiftUI
//
//struct ContentView: View{
//    let title: String = "Login"
//    let subTitle: String = "Enter Credentionals to Login"
//    @State var name: String = ""
//    @State var password: String = ""
//    @State private var showPassword: Bool = false
//    
//    var body: some View{
//        
//                
//        VStack(spacing: 20){
//            Spacer()
//            Image(systemName: "logo.playstation")
//                .resizable()
//                .scaledToFill()
//                .frame(width: 200, height: 150)
//                
//            //Spacer(minLength: 10)
//            VStack{
//                Text(title)
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                
//                Text(subTitle)
//                    .font(.caption)
//                    .fontWeight(.medium)
//            }
//            
//            //Spacer(minLength: 20)
//            HStack(spacing: 20){
//                Image(systemName: "envelope")
//                    .frame(width: 25, height: 25)
//                TextField("Enter your name", text: $name)
//                    .frame(maxWidth: .infinity)
//                    .fontWeight(.semibold)
//            }
//            .padding()
//            .overlay(
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(.black)
//            )
//            
//            
//            HStack(spacing: 20){
//                
//                Image(systemName: "lock.shield.fill")
//                    .frame(width: 25, height: 25)
//                if showPassword {
//                        TextField("Enter your password", text: $password)
//                            .fontWeight(.semibold)
//                    } else {
//                        SecureField("Enter your password", text: $password)
//                            .fontWeight(.semibold)
//                    }
//                
//                Button(action: {
//                    self.showPassword.toggle()
//                }, label: {
//                    Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
//                                .foregroundColor(.black)
//                    
//                })
//                
//            }
//            .padding()
//            
//            .overlay(
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(.black)
//            )
//            
//            //Spacer(minLength: 20)
//            
//            Button(action: {
//                
//            }, label: {
//                Text("Submit")
//                    .frame(maxWidth: .infinity)
//                    .padding()
//                    .foregroundStyle(.white)
//                    .background(.tint)
//                    .cornerRadius(20)
//
//            })
//            
//            HStack(spacing: 0){
//                Text("Don't Have an Account?  ")
//                Button("SingUp"){
//                    
//                }
//                .foregroundStyle(.clear)
//            }
//            
//            Spacer(minLength: 20)
//            
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .padding(.horizontal, 50)
//        .background(Color(.systemGray6))
//        
//    }
//}
//
//#Preview {
//    ContentView()
//}
