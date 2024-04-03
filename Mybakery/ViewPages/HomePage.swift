//
//  HomePage.swift
//  RealBakery
//
//  Created by Ghaida Farhan on 11/17/23.
//

import SwiftUI
/* will create a home page that welcome the user with showing the icon of the app and a start clickable button
 
 the Icon should be animated and looks PRETTY
 */
struct HomePage: View {
    @State private var aboutUs = false
    @ObservedObject var cart: Cart
    var body: some View {
        NavigationStack{
            ZStack{
                Image("bcground")
                    .ignoresSafeArea()
                
                VStack{
                    
                    Button("􀁜") {
                        self.aboutUs = true
                        
                    }
                    
//                    Spacer()
                        .popover(isPresented: $aboutUs ) {
                            Text("- HOW DO YOU START YOUR BUSINIESS? \n .It may sounds a little bit weird , but our business was a non-graded homework given to us by one of our great mentors.. , after a while we found ourselves building an actuall app that prompted us to complete this business \n\n\n -WHAT IS SPEACAIL ABOUT YOU? \n .All our products we are organic and validated by our Academy Mentors")
                                .font(.custom("PTSerif-Italic", size: 18))
                                .padding()
                                .bold()
                                .background(Color.black)
                                .foregroundColor(Color.white)
                                .cornerRadius(8)
                            
                            
                        }.padding(.top)
                    Spacer()
                    SlowPrint(textToPrint: "Welcome To \n Our Bakery ")
//                        .font(.largeTitle)
                        .font(.custom("PinyonScript-Regular", size: 50))
                    
                    
                    
                    Image("myIcon")
                        .resizable()
                        .frame(width: 200,height: 200)
                    
                    
                   
                    
                    Spacer()
                    NavigationLink {
                        MenuPage(cart: cart)
                    } label: {
                        
                      
                        
                        Label("Ready to order?", systemImage: "")
                            .font(.custom("PTSerif-Italic", size: 18))
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.black)
                            .cornerRadius(12)
                       
                    }
                    Spacer()
                }
               
               
            }
        }
    }
    //    }
    //}
}

#Preview {
    HomePage(cart: Cart())
     
}
