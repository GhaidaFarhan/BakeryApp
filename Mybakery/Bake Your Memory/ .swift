//
//  Bouqette.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 12/4/23.
//

import SwiftUI

struct Bouqette: View {
    let flowerList = ["rose", "sunFlower", "lily", "tulip", "orchid", "african Flower", "daisy", "peony", "jasmine"]
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                Image(.bcground)
                    .resizable()
                    .ignoresSafeArea()
                List {
                    
                    
                    ForEach(flowerList, id: \.self) { flower in
                        NavigationLink(destination: flowerDestination(flower)) {
                            Text(flower.capitalized)
                        }
                        
                    }
                    
                }
                .navigationTitle("Flower Bouquet")
                
            }
            
        }
        
    }
    
        
        @ViewBuilder
        // viewbuilder lets our function have an unknown (at compile time) return type.
        // you dont need a return statement if you use @viewbuilder
    
        
        func flowerDestination(_ flower: String) -> some View {
            switch flower {
            case "rose":
                (RoseView(flowerQuantity: 10, flowerImage: "redRose", confirmOrder: true, cart: Cart()))
            case "lily":
                (LilyView(flowerQuantity: 10, flowerImage: "redLily", cart: Cart()))
            case "african Flower":
                (AfricanFlowerView(flowerQuantity: 10, flowerImage: "AfricanFlower", cart: Cart()))
            case "orchid":
                (OrchidView(flowerQuantity: 10, flowerImage: "whiteOrchid", cart: Cart()))
            case "daisy":
                (DaisyView(flowerQuantity: 10, flowerImage: "redDaisy", cart: Cart()))
            case "peony":
                (PeonyView(flowerQuantity: 10, flowerImage: "redPeony", cart: Cart()))
            case "jasmine":
                (JasminView(flowerQuantity: 10, flowerImage: "jasmin1", cart: Cart()))
            case "tulip":
                (TulipView(flowerQuantity: 10, flowerImage: "redTulip", cart: Cart()))
            case "sunFlower":
                (SunFlowerView(flowerQuantity: 10, flowerImage: "redSunflower", cart: Cart()))
            default:
                (Text("Unsupported Flower"))
                
            }
               
        }
        
    }
    


#Preview {
    Bouqette()
}
