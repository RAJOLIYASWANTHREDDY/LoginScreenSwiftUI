# LoginScreenSwiftUI
 
A simple and clean login screen UI built with SwiftUI.
 
## Project Info
 
- **Project Name**: LoginScreenSwiftUI
- **Created**: June 18, 2026
- **Author**: Yaswanth Reddy
- **File**: ContentView.swift
## Features
 
✅ Color literal background  
✅ Email input field with border  
✅ Password input field with border  
✅ Sign In button  
✅ Sign Up link  
✅ Responsive layout  
 
## Components
 
### State Variables
```swift
@State private var email = ""
@State private var password = ""
```
 
### Background
```swift
Color(colorLiteral(red: 0, green: 0.7840057015, blue: 0.9120769501, alpha: 0.4060154754))
    .ignoresSafeArea()
```
 
### Email Field
- Icon: envelope.fill
- Placeholder: "Email"
- Keyboard: emailAddress
- Border: Gray with 1pt width
### Password Field
- Icon: lock.fill
- Placeholder: "Password"
- Type: SecureField
- Border: Gray with 1pt width
### Login Button
- White background
- Dark blue text
- Gray border
- Full width with padding
### Sign Up Link
- "Don't have an account?" + "Sign Up"
- White text color
## Usage
 
The component is ready to use in Xcode:
 
```swift
struct ContentView: View {
    var body: some View {
        ContentView()
    }
}
```
 
## Customization
 
### Change Background Color
```swift
Color(colorLiteral(red: 0.2, green: 0.3, blue: 0.7, alpha: 1))
```
 
### Change Button Color
```swift
.foregroundColor(Color.white)  // Text color
.background(Color.blue)        // Background color
```
 
### Change Border Color
```swift
.stroke(Color.white, lineWidth: 2)
```
 
### Change Font Sizes
```swift
.font(.system(size: 24, weight: .bold))  // Header
.font(.system(size: 18, weight: .semibold))  // Button
```
 
## Layout Structure
 
```
ZStack (Background + Content)
├── Color (Background)
└── VStack (Main Container)
    ├── Header (Welcome Back + Subtitle)
    ├── Email Field (HStack)
    ├── Password Field (HStack)
    ├── Spacer
    ├── Login Button
    └── Sign Up Link
```
 
## Input Fields
 
| Field | Type | Icon | Keyboard |
|-------|------|------|----------|
| Email | TextField | envelope.fill | emailAddress |
| Password | SecureField | lock.fill | default |
 
## Colors Used
 
| Element | Color |
|---------|-------|
| Background | Cyan/Blue (colorLiteral) |
| Text | White |
| Icon | Gray (0.6 & 0.5 opacity) |
| Input Background | White (15% opacity) |
| Border | Gray |
| Button Text | Dark Blue |
| Button Background | White |
