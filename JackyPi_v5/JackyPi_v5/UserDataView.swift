//
//  UserDataView.swift
//  JackyPi_v5
//
//  Created by 👶 Wei on 2020/7/3.
//  Copyright © 2020 👶 Wei. All rights reserved.
//

import SwiftUI

struct UserDataView: View {
    var body: some View {
        VStack{
            
            List{
                HStack{
                    Image(systemName: "person").resizable()
                        .frame(width: 20,height: 20)
                        .padding(.horizontal, 5)
                    Text("個人資料")
                }
                HStack{
                    Image(systemName: "cart").resizable()
                        .frame(width: 20,height: 20)
                        .padding(.horizontal, 5)
                    Text("我的賣場")
                }
                HStack{
                    Image(systemName: "bubble.left").resizable()
                        .frame(width: 20,height: 20)
                        .padding(.horizontal, 5)
                    Text("客服留言")
                }
                HStack{
                    Image(systemName: "exclamationmark.circle").resizable()
                        .frame(width: 20,height: 20)
                        .padding(.horizontal, 5)
                    Text("常見問題")
                }
                HStack{
                    Image(systemName: "doc.text").resizable()
                        .frame(width: 20,height: 20)
                        .padding(.horizontal, 5)
                    Text("會員隱私權與權益說明")
                }
                HStack{
                    Image(systemName: "x.circle").resizable()
                        .frame(width: 20,height: 20)
                        .padding(.horizontal, 5)
                    Text("登出")
                }

     
            }
        }
    }
}

struct UserDataView_Previews: PreviewProvider {
    static var previews: some View {
        UserDataView()
    }
}

struct CircleUserImage: View {
    var body: some View {
        Image(systemName: "person").resizable()
            .frame(width: 60,height:  60)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CardUserImage: View {
    var body : some View {
        VStack{
            Image("photo").resizable()
                .frame(width: UIScreen.main.bounds.width - 50,height: UIScreen.main.bounds.width/4*3)
                .padding(.vertical,5)
            Divider().padding(.horizontal, 10)
            VStack(alignment: .leading){
                HStack {
                    CircleUserImage()
                    Text("姓名")
                        .padding(.horizontal, 10)
                        
                    Spacer()
                    
                    Button(action: {
                        print("check oderview")
                    }){
                        Text("查看訂單")
                    }
                    
                }.frame(width: UIScreen.main.bounds.width-50)
                
                
            }.frame(width: UIScreen.main.bounds.width-50)
    
        }.background(Color.secondary)
    }
    
}
