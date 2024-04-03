//
//  MenuPage.swift
//  RealBakery
//
//  Created by Ghaida Farhan on 11/17/23.
//

import SwiftUI



private var hotCoffee: [myProduct] = [
    myProduct(name: "latte", cal: 350 , price: 3.5),
    myProduct(name: "Americano" ,cal: 380 ,price: 4.0),
    myProduct(name: "Turkish Coffee" ,cal: 330 ,price: 4.5),
    myProduct(name: "Espresso" ,cal: 380 ,price: 4.0),
    myProduct(name: "Flat White" ,cal: 380 ,price: 3.5),
    myProduct(name: "Macciato" ,cal: 380 ,price: 4.0 ),
    myProduct(name: "Mocha" ,cal: 380 ,price: 3.0 ),
    myProduct(name: "Tea" ,cal: 380 ,price: 3.0),
    myProduct(name: "Hot Chocolate" ,cal: 380 ,price: 4.5)
]


private var IcedCoffee: [myProduct] = [
    myProduct(name: "latte", cal: 350 , price: 3.5),
    myProduct(name: "Cold Brew" ,cal: 380 ,price: 4.0),
    myProduct(name: "Caramel Latte" ,cal: 330 ,price: 4.5),
    myProduct(name: "Vanilla latte" ,cal: 380 ,price: 4.0),
    myProduct(name: "White Mocha " ,cal: 380 ,price: 3.5),
    myProduct(name: "Matcha latte" ,cal: 380 ,price: 4.0),
    myProduct(name: "Frappuccino" ,cal: 380 ,price: 3.0),
    myProduct(name: "Iced Tea" ,cal: 380 ,price: 3.0),
]


private var treats: [myProduct] = [
    myProduct(name: "Vanilla Cupcake", cal: 350 , price:4.5),
    myProduct(name: "Chocolate Cupcake" ,cal: 380 ,price:4.0),
    myProduct(name: "Strawberry Cupcake" ,cal: 330 ,price:4.5),
    myProduct(name: "Red Velvet Cupcake" ,cal: 380 ,price:4.5),
    myProduct(name: "Cinammon Roll " ,cal: 380 ,price:3.5),
    myProduct(name: "Cheese Cake" ,cal: 380 ,price:4.5),
    myProduct(name: "Lemon Loaf" ,cal: 380 ,price:5.0),
]



private var Sandwiches: [myProduct] = [
    myProduct(name: "Turkey Sandwich", cal: 350 , price:6.0),
    myProduct(name: "Cheese Sandwich" ,cal: 380 ,price:6.0),
    myProduct(name: "Egg Sandwich" ,cal: 330 ,price:6.0),
    myProduct(name: "Croissant" ,cal: 380 ,price:4.5),
    myProduct(name: "Chocolate Crossiant " ,cal: 380 ,price:4.5),
    myProduct(name: "Veggie Delite Sandwich" ,cal: 380 ,price:7.5),
    myProduct(name: "Begal" ,cal: 380 ,price:4.5),
]



//



struct MenuPage: View {
    @ObservedObject var cart: Cart
    
    var body: some View {
        
        ZStack {
           
//                Color("color2")
           
            Image("menuBc")
                .resizable()
                .ignoresSafeArea()
                
                
            ScrollView {
               
                VStack{
                    HStack{
                        Divider()
                            .frame(width:132 ,height: 4)
                            .overlay(.black)
                        Text("Menu")
                            .font(.custom("PinyonScript-Regular", size: 35))
                            .bold()
                        Divider()
                            .frame(width:136,height: 4)
                            .overlay(.black)
                        
                    }
                    
                    .padding()
                    /*adding a menu for a hot coffee and iced coffee
                     adding a menu for the sandwiches with the ingredients
                     adding the cupcakes
                     */
                    
                    VStack(alignment: .leading) {
                        
                        Text("Hot Coffee")
                            .font(.custom("PinyonScript-Regular", size: 40))
                        
                        ForEach(hotCoffee) { coffee in
                            HStack{
                                Button {
                                    cart.addToCart(product: coffee)
                                }label: {
                                    Image(systemName: "plus")
                                }
                                .foregroundColor(.black)
                                
                                VStack(alignment: .leading) {
                                    
                                    //  Text("\(coffe.name)................... $\(String(format : "%2.f",coffe.price)).00")
                                   // .font(.custom("PTSerif-Italic", size: 18))
                                    
                                    Text("\(coffee.name).................. $\(String(format : "%2.f",coffee.price)).00")
                                        .font(.custom("PTSerif-Italic", size: 18))
                                    
//                                    Text("\(coffee.cal) cal")
//                                        
                                      
                                    
                                }

                                   
                                
                               
                                    
                                    
                            }
                            
                            
                        }
                        
            
                    }.padding()
                        .border(Color.black)
                        .cornerRadius(18)
                        .background(.ultraThinMaterial)
                        .cornerRadius(19)
                    VStack(alignment: .leading){
                        
                        Text("Iced Coffee")
                            .font(.custom("PinyonScript-Regular", size: 40))
                        ForEach(IcedCoffee) { coffe in
                            HStack{
                                Button {
                                    cart.addToCart(product: coffe)
                                }label: {
                                    Image(systemName: "plus")
                                }
                                .foregroundColor(.black)
                                
                                //                            .background(Color.black)
                                //                            .clipShape(Capsule())
                                
                                
                                Text("\(coffe.name)................... $\(String(format : "%2.f",coffe.price)).00")
                                    .font(.custom("PTSerif-Italic", size: 18))
                            }
                            
                            
                            
                        }
                        
                        
                        
                    }.padding()
                        .border(Color.black)
                        .cornerRadius(18)
                        .background(.ultraThinMaterial)
                        .cornerRadius(19)
                    VStack(alignment: .leading){
                        
                        Text("Treats")
                            .font(.custom("PinyonScript-Regular", size: 40))
                        
                        ForEach(treats) { myTreat in
                            HStack{
                                Button {
                                    cart.addToCart(product: myTreat)
                                }label: {
                                    Image(systemName: "plus")
                                }
                                .foregroundColor(.black)
                                
                                //                            .background(Color.black)
                                //                            .clipShape(Capsule())
                                
                                
                                Text("\(myTreat.name).........$\(String(format : "%2.f",myTreat.price)).00")
                                    .font(.custom("PTSerif-Italic", size: 18))
                            }
                            
                            
                            
                        }
                        
                        
                        
                    }.padding()
                        .border(Color.black)
                        .cornerRadius(20)
                        .background(.ultraThinMaterial)
                        .cornerRadius(20)
                    VStack(alignment: .leading){
                        
                        Text("Sandwiches")
                            .font(.custom("PinyonScript-Regular", size: 35))
                        
                        ForEach(Sandwiches) { Sandwich in
                            HStack{
                                Button {
                                    cart.addToCart(product: Sandwich)
                                }label: {
                                    Image(systemName: "plus")
                                }
                                .foregroundColor(.black)
                                
                                // having the ingredients as a caption or adding a drop down to see the ingredients ?
                                Text("\(Sandwich.name).......$\(String(format : "%2.f",Sandwich.price)).00")
                                    .font(.custom("PTSerif-Italic", size: 18))
                            }
                            
                            
                            
                            
                        }
                        
                        
                        
                    }.padding()
                        .border(Color.black)
                        .cornerRadius(18)
                        .background(.ultraThinMaterial)
                        .cornerRadius(19)
                }
            }
        }
    }
}

#Preview {
    MenuPage(cart: Cart())
    
}
