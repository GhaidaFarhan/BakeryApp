//
//  OrderPage.swift
//  RealBakery
//
//  Created by Ghaida Farhan on 11/17/23.
//

import SwiftUI

struct OrderPage: View {
    @ObservedObject var cart: Cart
    var product: myProduct
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Image("bcground")
                    .ignoresSafeArea()
                
                if cart.products.isEmpty {
                    VStack{
                        Text("Your Cart Is Empty!")
                            .bold()
                            .font(.custom("PTSerif-Italic", size: 37))
                        
                        
                        NavigationLink{
                            MenuPage(cart: cart)
                            
                        }label: {
                            Label("Go Back to Menu?", systemImage: "menucard")
                                .font(.custom("PTSerif-Italic", size: 18))
                                .frame(width: 190,height: 60)
                                .foregroundColor(.white)
                                .background(.black)
                                .cornerRadius(5)
                            
                            
                        }
                        NavigationLink {
                            ToGoPage(cart: cart)
                            
                        }label: {
                            Label("", systemImage: "menucard")
                                .font(.custom("PTSerif-Italic", size: 18))
                                .frame(width: 190,height: 60)
                                .foregroundColor(.white)
                                .background(.black)
                                .cornerRadius(5)
                            
                            
                        }
                    }
                }else {
                    //                        ScrollView{
                    VStack (alignment: .leading){
                        ForEach(cart.products) { myItem in
                            HStack{
                                
                                VStack(alignment: .leading, spacing: 10){
                                    Text(myItem.imageName ?? "")
                                    Text(myItem.name)
                                        .font(.title2)
                                    Text("$\(String(format : "%2.f", myItem.price)).00")
                                        .bold()
                                        .font(.caption)
                                    
                                }
                                
                                
                                .padding()
                                Button{
                                    cart.removeFromCart()
                                }label:{
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                }
                                
                                .padding()
                            }
                            .background(.ultraThinMaterial)
                            
                            .border(.black)
                            .cornerRadius(15)
                            
                        }
                       // To Do : add the tax and the subtotal and the total and the info of the credit/ debit card or apple pay
                        Text("Total: \(String(format : "%2.f",cart.totalPrice)).00")
                            .background(.ultraThickMaterial)
                    } .padding()
                    
//                    
//                    Button("Delete", systemImage:"trash" , role: .destructive, action: { })
//                        .buttonStyle(.bordered)
//                        .controlSize(.regular)
//                    
                }
                
            }
        }
    }
}
    


#Preview {
    OrderPage(cart: Cart(), product: myProduct(name: "", cal: 2, price: 0.0))
}
