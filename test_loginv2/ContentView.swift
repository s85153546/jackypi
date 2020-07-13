//
//  ContentView.swift
//  test_loginv2
//
//  Created by WINSCGU on 2020/7/12.
//  Copyright © 2020 WINSCGU. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var ViewSignUp = false
    
    var body: some View {
        NavigationView{
            ZStack{
                NavigationLink(destination: SignUp(ViewSignUp: self.$ViewSignUp), isActive: self.$ViewSignUp){Text("")}
                    .hidden()
                Login(ViewSignUp: self.$ViewSignUp)
           
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Login : View {
    
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var passwd = ""
    @State var visible = false
    @Binding var ViewSignUp : Bool
    @State var alert = false
    @State var error = ""
 
    
    
    
    var body: some View{
        
        ZStack{
        
            ZStack(alignment:.topTrailing){
            
                GeometryReader{_ in
                    VStack{
                        
                        Text("Log in to your account")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(self.color)
                            .padding(.top, 35)
                        VStack{
                            TextField("Email", text:self.$email)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color.secondary : self.color, lineWidth: 2 ))
                            HStack(spacing:15){
                                if self.visible{
                                    TextField("Password", text: self.$passwd)
                                }else{
                                    SecureField("Password", text: self.$passwd)
                                }
                        
                                Button(action: {
                                    self.visible.toggle()
                                    print("Property visible state:\(self.visible)")
                                }, label: {
                                    Image(systemName: self.visible ? "eye.slash.fill":"eye.fill")
                                        .foregroundColor(self.color)
                                })
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color.secondary : self.color, lineWidth: 2 ))
                        
                            HStack{
                                Spacer()
                                
                                Button(action:{
                                    print("")
                                }){
                                    Text("Forget password")
                                        .fontWeight(.bold)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding(.vertical,5)
                        
                            Button(action:{
                                
                                self.verify()
                                print("call func verify")
                                
                            }){
                                Text("Log in")
                                    .foregroundColor(.white)
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width - 50)
                            }
                            .background(Color.secondary)
                            .cornerRadius(10)
                            .padding(.vertical,5)
                        }
                    }
                    .padding(.vertical,10)
                }
                .padding(.horizontal, 25)
                Button(action: {
                    self.ViewSignUp.toggle()
                    print("View to Register, ViewSignUp State:\(String(self.ViewSignUp))")
                }, label: {
                    Text("Register")
                        .foregroundColor(self.color)
                })
                .padding()
            }
            
            if self.alert{
                
                ErrorView(alert: self.$alert, error: self.$error)
            }
        }
    }
    
    func verify(){
        if self.email != "" && self.passwd != ""{
            
        }else{
            
            self.error = "Please fill all the contents properly"
            self.alert.toggle()
            
        }
    }
}

struct SignUp: View {
    
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var passwd = ""
    @State var repasswd = ""
    @State var visible = false
    @State var revisible = false
    @Binding var ViewSignUp : Bool

    
    var body: some View{
        
        ZStack(alignment:.topLeading){
            
            GeometryReader{_ in
                VStack{

                    
                    Text("Log in to your account")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                        .padding(.top, 35)
                    VStack{
                        TextField("Email", text:self.$email)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color.secondary : self.color, lineWidth: 2 ))
                        HStack(spacing:15){
                            if self.visible{
                                TextField("Password", text: self.$passwd)
                                
                            }else{
                                SecureField("Password", text: self.$passwd)
                            }
                            
                            Button(action: {
                                self.visible.toggle()
                                print("Property visible state:\(self.visible)")
                            }, label: {
                                Image(systemName: self.visible ? "eye.slash.fill":"eye.fill")
                                    .foregroundColor(self.color)
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color.secondary : self.color, lineWidth: 2 ))
                        HStack(spacing:15){
                            if self.revisible{
                                TextField("Re-enter", text: self.$repasswd)
                                
                            }else{
                                SecureField("Re-enter", text: self.$repasswd)
                            }
                            
                            Button(action: {
                                self.revisible.toggle()
                                print("Property revisible state:\(self.revisible)")
                            }, label: {
                                Image(systemName: self.visible ? "eye.slash.fill":"eye.fill")
                                    .foregroundColor(self.color)
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color.secondary : self.color, lineWidth: 2 ))
                        
                        
                    }
                    .padding(.vertical,10)
                    
                    Button(action:{
                        
                    }){
                        Text("Register")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 50)
                    }
                    .background(Color.secondary)
                    .cornerRadius(10)
                    .padding(.vertical,5)


                }
                .padding(.horizontal, 25)
            }
            
            Button(action: {
                self.ViewSignUp.toggle()
                print("Back to LoginView, ViewSignUp State:\(String(self.ViewSignUp))")

            }, label: {
                Image(systemName: "arrow.left")
                    .foregroundColor(self.color)
            })
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    
    }
}
struct ErrorView: View {
    
    @State private var color = Color.black.opacity(0.7)
    
    @Binding var alert : Bool
    @Binding var error : String
    
    var body: some View{
        
        GeometryReader{_ in
            VStack{
                HStack{
                    
                    Text("Error")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 25)
                
                Text(self.error)
                    .foregroundColor(self.color)
                    .padding(.top)
                    .padding(.horizontal, 25)
                
                Button(action: {
                    self.alert.toggle()
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 120)
                })
                .background(Color.secondary)
                .cornerRadius(10)
                .padding(.top, 25)
            }
            .frame(width: UIScreen.main.bounds.width - 70)
            .background(Color.white)
            .cornerRadius(15)
            
        }
        .background(Color.black.opacity(0.35).edgesIgnoringSafeArea(.all))
    }
}
