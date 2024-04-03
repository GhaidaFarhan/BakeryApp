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
                Color("color2")
                    .ignoresSafeArea()
                VStack{
                    SlowPrint(textToPrint: "Are you ready \n to Bake Your\n\t\tMemory?")
                        .font(.custom("PTSerif-Italic", size: 40))
                    
                    
                        NavigationLink{
                            CustomizeCake()
                        }label: {
                            Label("Start To Customize!",systemImage: "birthday.cake")
                        }
                    }
                }
            
        }
    }
}

#Preview {
    BakeyourMemory()
}
