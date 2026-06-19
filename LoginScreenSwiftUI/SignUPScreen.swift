//
//  SignUPScreen.swift
//  LoginScreenSwiftUI
//
//  Created by yaswanth reddy on 6/19/26.
//

import SwiftUI

struct SignUPScreen: View {
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var showPassword = false
    @State private var showConfirmPassword = false
    
    var body: some View {
        ZStack {
            // Dark background
            Color(Color(#colorLiteral(red: 0.08632323891, green: 0.08739880472, blue: 0.08737985045, alpha: 0.7950489429)))
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 24) {
                    // Icon Circle
                    Circle()
                        .fill(Color(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)))
                        .frame(width: 80, height: 80)
                        .overlay(
                            Image(systemName: "square")
                                .font(.system(size: 32, weight: .semibold))
                                .foregroundColor(Color(red: 0.39, green: 0.40, blue: 0.94))
                        )
                        .padding(.top, 20)
                    
                    // Header
                    VStack(spacing: 8) {
                        Text("Create account")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                        
                        Text("Sign up to get started")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    }
                    
                    VStack(spacing: 16) {
                        // Full Name Field
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Full name")
                                .font(.system(size: 13, weight: .regular))
                                .foregroundColor(.gray)
                            
                            HStack(spacing: 12) {
                                Image(systemName: "square")
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(.gray.opacity(0.5))
                                
                                TextField("John Doe", text: $fullName)
                                    .foregroundColor(Color(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)))
                            }
                            .padding(14)
                            .background(Color.white.opacity(0.08))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                        
                        // Email Field
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Email address")
                                .font(.system(size: 13, weight: .regular))
                                .foregroundColor(.gray)
                            
                            HStack(spacing: 12) {
                                Image(systemName: "square")
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(.gray.opacity(0.5))
                                
                                TextField("", text: $email)
                                    .keyboardType(.emailAddress)
                                    .textInputAutocapitalization(.never)
                                    .foregroundColor(Color(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)))
                            }
                            .padding(14)
                            .background(Color.white.opacity(0.1))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                        
                        // Password Field
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Password")
                                .font(.system(size: 13, weight: .regular))
                                .foregroundColor(.gray)
                            
                            HStack(spacing: 12) {
                                Image(systemName: "square")
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(.gray.opacity(0.5))
                                
                                if showPassword {
                                    TextField("", text: $password)
                                        .foregroundColor(.white)
                                } else {
                                    SecureField("", text: $password)
                                        .foregroundColor(.white)
                                }
                                
                                Button(action: { showPassword.toggle() }) {
                                    Image(systemName: showPassword ? "eye.slash" : "eye")
                                        .font(.system(size: 14))
                                        .foregroundColor(.gray.opacity(0.5))
                                }
                            }
                            .padding(14)
                            .background(Color.white.opacity(0.08))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                        
                        // Confirm Password Field
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Confirm password")
                                .font(.system(size: 13, weight: .regular))
                                .foregroundColor(.gray)
                            
                            HStack(spacing: 12) {
                                Image(systemName: "square")
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundColor(.gray.opacity(0.5))
                                
                                if showConfirmPassword {
                                    TextField("", text: $confirmPassword)
                                        .foregroundColor(.white)
                                } else {
                                    SecureField("", text: $confirmPassword)
                                        .foregroundColor(.white)
                                }
                                
                                Button(action: { showConfirmPassword.toggle() }) {
                                    Image(systemName: showConfirmPassword ? "eye.slash" : "eye")
                                        .font(.system(size: 14))
                                        .foregroundColor(.gray.opacity(0.5))
                                }
                            }
                            .padding(14)
                            .background(Color.white.opacity(0.08))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                    }
                    
                    // Create Account Button
                    Button(action: {}) {
                        HStack {
                            Text("Create account")
                                .font(.system(size: 16, weight: .semibold))
                            
                            Image(systemName: "square")
                                .font(.system(size: 14))
                        }
                        .frame(maxWidth: .infinity)
                        .padding(14)
                        .background(Color.white.opacity(0.08))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )
                    }
                    
                    // Divider with Text
                    HStack(spacing: 12) {
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 1)
                        
                        Text("or continue with")
                            .font(.system(size: 13, weight: .regular))
                            .foregroundColor(.gray)
                        
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 1)
                    }
                    
                    // Social Buttons
                    HStack(spacing: 12) {
                        // Google Button
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "square")
                                    .font(.system(size: 14))
                                Text("Google")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(12)
                            .foregroundColor(.white)
                            .background(Color.white.opacity(0.08))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                        
                        // Apple Button
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "square")
                                    .font(.system(size: 14))
                                Text("Apple")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(12)
                            .foregroundColor(.white)
                            .background(Color.white.opacity(0.08))
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        }
                    }
                    
                    // Sign In Link
                    HStack(spacing: 4) {
                        Text("Already have an account?")
                            .font(.system(size: 13, weight: .regular))
                            .foregroundColor(.gray)
                        
                        Button("Sign in") {
                            // Navigate to sign in
                        }
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundColor(Color(red: 0.39, green: 0.40, blue: 0.94))
                    }
                    .padding(.top, 8)
                    
                }
                .padding(24)
            }
        }
    }
}

#Preview {
    SignUPScreen()
}
