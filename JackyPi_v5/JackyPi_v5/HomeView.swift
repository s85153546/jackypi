//
//  HomeView.swift
//  JackyPi_v5
//
//  Created by 👶 Wei on 2020/7/2.
//  Copyright © 2020 👶 Wei. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View{
        
        NavigationView{
            
            ZStack{
                
                GeometryReader{_ in
                    
                    List(0 ..< 30){ item in
//                        ForEach{
                            HStack{
                                Image(systemName: "photo").resizable()
                                    .frame(width: 60,height: 60)
                                    .padding(5)
                                    .cornerRadius(8)
                                    
                                VStack{
                                    Text("直播名稱")
                                    Text("直撥來源")
                                    Text("直撥網址")
                                
                                }
                                Spacer()
                                VStack{
                                    
                                    Text("觀看人數：xx")
                                    HStack{
                                        
                                        Button(action:{
                                        
                                        }){
                                            Image(systemName: "heart").resizable()
                                                .frame(width: 20, height: 20)
                                        }
                                        .padding(.leading, 30)
                                        .padding(.trailing,5)
                                        
                                        
                                        Button(action:{
                                        
                                        }){
                                            Image(systemName: "paperplane").resizable()
                                                .frame(width: 20, height: 20)
                                        }
                                    }
                                    .buttonStyle(BorderlessButtonStyle())
                                
                                
                                }
                            }
                        
//                        }
                    }
                    .environment(\.defaultMinListRowHeight, 80)
                    
                        
                        
                        
                }
                .navigationBarTitle("JackyPi", displayMode: .inline)
                .navigationBarItems(leading:
                    Button(action: {
                    }, label: {
                        
                        Image(systemName: "list.dash").resizable()
                            .frame(width: 20,height: 15)
                            .foregroundColor(.black)
                    }), trailing:
                        
                        NavigationLink(destination: Text(""), label: {
                            
                            Image(systemName: "message").resizable()
                                .frame(width: 20,height: 20)
                                .foregroundColor(.black)
                            
                        })
                )

            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
