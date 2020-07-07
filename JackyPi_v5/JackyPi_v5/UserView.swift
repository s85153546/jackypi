//
//  UserView.swift
//  JackyPi_v5
//
//  Created by 👶 Wei on 2020/7/2.
//  Copyright © 2020 👶 Wei. All rights reserved.
//

import SwiftUI

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

struct UserView: View {
    
// @State var RegisterPage = false
    
    var body: some View{
        
        ZStack(alignment: .topLeading){
//            GeometryReader{_ in
                LoginView_v2()
                
                
//            }
            
        }
                
            
            
    }
}

struct LoginView_v2: View {
    var body: some View {
        
        ZStack{
            NavigationView{
                    
                        VStack{
                            Text("尚未登入").font(.body)
                            Button(action: {}){
                                HStack(spacing: 10){
                                    Image("facebook").resizable()
                                        .padding(2)
                                        .frame(width:25, height: 25)
                                        .background(Color.white)
                                        .foregroundColor(.blue)
                                        .cornerRadius(5)
                                    Spacer(minLength: 10)
                                    Text("使用 Facerbook 登入")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Spacer()
                            }
                            .padding(10)
                            .frame(width: UIScreen.main.bounds.width - 120)
                            .background(Color.blue)
                            .cornerRadius(10)
                            }
                            
                        
                                
                            Button(action: {}){
                                HStack(spacing: 10){
                                    Image("google").resizable()
                                        .padding(2)
                                        .frame(width:25, height: 25)
                                        .background(Color.white)
                                        .foregroundColor(.yellow)
                                        .cornerRadius(5)
                                    Spacer()
                                Text("使用 Google 登入")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            .padding(10)
                            .frame(width: UIScreen.main.bounds.width - 120)
                            .background(Color.red)
                            .cornerRadius(10)
                        
                            }
                        }
                    
                
                .navigationBarTitle("會員專區", displayMode: .inline)
                
            }
        }
        
    }
}


    


struct LoginView_v1: View {
    
    @State var color = Color.black.opacity(0.7)
    @State var account = ""
    @State var password = ""
    @State var visible = false
    @Binding var RegisterPage : Bool
    
    var body: some View {
        ZStack(alignment: .center){
            VStack{

                VStack{
                    TextField("電話號碼/信箱",text: self.$account)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.account != "" ? Color(.red): self.color, lineWidth: 2))
                        .padding(.horizontal, 40)
                    
                    HStack(spacing: 10){
                        if self.visible{
                            
                            TextField("Password", text: self.$password)
                            
                        }else {
                            
                            SecureField("Password", text: self.$password)
                            
                        }
                        
                        Button(action: {
                            
                            self.visible.toggle()
                            
                        }){
                            Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.account != "" ? Color(.red): self.color, lineWidth: 2))
                    .padding(.horizontal, 40)
                }
                
                HStack{
                    
                    Spacer()
                    
                    Button(action: {
                        
                        
                    }){
                        
                        Text("忘記密碼")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                    }
                    .padding(.top, 5)
                }
                .padding(.horizontal, 40)
                
                HStack{
                    
                    Button(action: {
                        
                    }){
                        
                        Text("登入")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 250)
                    }
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding(.top, 10)
                    
                    Button(action: {
                        
                        self.RegisterPage.toggle()
                        
                    }){
                        
                        Text("註冊")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 250)
                    }
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding(.top, 10)
                    
                }
                .padding(.horizontal, 40)
                
                HStack(spacing: 15){
                    
                    Rectangle()
                        .fill(Color.gray)
                        .frame(height: 1)
                    
                    Text("或")
                    
                    Rectangle()
                        .fill(Color.gray)
                        .frame(height: 1)
                    
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, 10)
                
                HStack(spacing: 15){
                    
                    Button(action: {
                        
                    }){
                        
                        HStack {
                            Image("Facebook").resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                        }
                    }
                    
                    Button(action: {
                        
                    }){
                        
                        HStack {
                            Image("Google").resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())

                        }
                    }
                
                }
                .padding()
                
                    
                
            }

        }
    }
    
}

/*
struct RegisterView: View {
    
    @Binding var RegisterPage : Bool
    
    var body: some View{
        
        ZStack(alignment: .topLeading){
            
            GeometryReader{_ in
                
                Text("123")
            }
            


        }
        
    }
    
}
*/
