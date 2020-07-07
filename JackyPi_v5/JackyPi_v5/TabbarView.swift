//
//  TabbarView.swift
//  JackyPi_v5
//
//  Created by 👶 Wei on 2020/7/2.
//  Copyright © 2020 👶 Wei. All rights reserved.
//

import SwiftUI

struct TabbarView: View {
    
    
    var body: some View {
        
        GeometryReader{ geometry in
            ZStack(alignment: .bottomLeading) {
                
                TabView {
                    
                    HomeView()
                        .tabItem {
                            Image(systemName: "house")
                            Text("首頁")
                            
                    }.tag(0)

/*
                    HeartView()
                        .tabItem {
                            Image(systemName: "heart")
                            Text("我的最愛")
                            
                    }.tag(1)
*/
                    
                    CartView()
                        .tabItem {
                            Image(systemName: "bag")
                            Text("購物車")
                            
                    }.tag(2)

                    
                    UserView()
                        .tabItem {
                            
                            VStack{
                                Image(systemName: "person")
                                Text("會員專區")
                            }

                    }.tag(3)

                    
                    
                    
                }
            }
        }
        
    }
    
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
