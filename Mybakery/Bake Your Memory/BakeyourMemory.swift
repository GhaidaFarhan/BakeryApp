//
//  BakeyourMemory.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 11/19/23.
//

import SwiftUI

struct BakeyourMemory: View { 
    var body: some View {
     NavigationStack {
            ZStack{
                
//                Color("myBrown")
                Image("bcground")
//                Color("color2")
                    .ignoresSafeArea()
               
                   
                    
                VStack(spacing: 30){
                    SlowPrint(textToPrint: "Are you ready \n to Bake Your\n\tMemory?")
                        .font(.custom("PTSerif-Italic", size: 40))
                    
                        NavigationLink{
                            CustomizeCake()
                        }label: {
                            Label("Start To Customize!",systemImage: "birthday.cake")
                                
                                .padding()
                                .background(.ultraThinMaterial)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                            
                        }.padding()
                }
                
                }
            
        }
    }
}

#Preview {
    BakeyourMemory()
}
