//
//  ContentView.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 11/18/23.
//

import SwiftUI

struct ContentView: View {
   // somethig here to store cart items
    // state object
    @StateObject var cart = Cart()
    var body: some View {
        
        
        TabView {
            
         
        
            HomePage(cart: cart)
                .tabItem {
                    Label("Home", systemImage: "house.circle")
                       
                    
                }
            MenuPage(cart: cart)
                .tabItem {
                    Label("Menu", systemImage: "menucard")
                } 
            
            
            ToGoPage(cart: cart)
                .tabItem {
                    Label("To Go", systemImage: "figure.walk.motion")
                }
            OrderPage(cart: cart, product: myProduct(name: "", cal: 0, price: 0.0))
                .tabItem {
                    Label("Order", systemImage: "basket")
                  
                }
//                .badge(2)
//                .background(.black)
            BakeyourMemory()
                .tabItem {
                    Label("B.Y.M",systemImage: "birthday.cake")
                }
            
            
           
            
        }.ignoresSafeArea()
            .font(.custom("PTSerif-Italic", size: 18))
        
    }
        
}

#Preview {
    ContentView()
}
