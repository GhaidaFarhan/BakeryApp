//
//  ToGoPage.swift
//  RealBakery
//
//  Created by Ghaida Farhan on 11/17/23.
//

import SwiftUI

struct ToGoPage: View {
    
    
    var myBread: [Bread] = [
        Bread(imageName:"bread1",name: "Sourdough",  price: 7, cal: 180),
        Bread(imageName:"BananaBread",name: "Banana Bread" ,price: 6, cal: 200),
        Bread(imageName:"ChallahBread",name: "Challah Bread" ,price: 6, cal: 220 ),
        Bread(imageName:"FrenchBaguettes",name: "French Baguettes" ,price: 4, cal: 150),
        Bread(imageName:"pullApartBread",name: "Pull A-part Bread " ,price: 5, cal: 180 ),
        Bread(imageName:"Babka",name: "Babka Bread " ,price: 6, cal: 250),
        Bread(imageName:"MultiGrain",name: "Multi-Grain Bread " ,price: 7, cal: 180 ),
        Bread(imageName:"Focaccia",name: "Focaccia Bread " ,price: 6 , cal: 220 )
    ]
    
    
   @ObservedObject var cart: Cart 
    
    var body: some View {
        
        
        ZStack{
            //                Color("color2")
            Image("breadBc")
                .resizable()
                .ignoresSafeArea()
            ScrollView{
                
                VStack(alignment: .leading){
                    
                    HStack(alignment: .center){
                        Divider()
                            .frame(width:135 ,height: 3)
                            .overlay(.black)
                        Text(" Bread ")
                            .font(.custom("PinyonScript-Regular", size: 39))
                        
                        Divider()
                            .frame(width:137 ,height: 3)
                            .overlay(.black)
                    }
                    
                    VStack(alignment: .leading){
                        ForEach(myBread) { bread in
                            HStack{
                                Button {
                                    cart.addToCart(theBread: bread)
                                } label: {
                                    Image(systemName: "plus")
                                }

                                
                                Image(bread.imageName ?? "BreadIcon")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    .border(.black)
                                    .cornerRadius(8)
                                VStack(alignment: .leading){
                                    Text("\(bread.name)").font(.custom("PinyonScript-Regular", size: 35))
                                    
                                    Text("\(bread.cal) cal ................ $\(String(format : "%2.f",bread.price)).00")
                                    //                                        .font(.caption) .font(.custom("PTSerif-Italic", size: 18))
                                        .padding(1)
                                    Divider()
                                        .frame(height: 1)
                                        .overlay(.black)
                                }
                            }.padding(3)
                        }.background(.ultraThinMaterial)
                        
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ToGoPage(cart: Cart())
}
