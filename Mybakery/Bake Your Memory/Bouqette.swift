//
//  Bouqette.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 3/28/24.
//

import SwiftUI

struct Bouqette: View {
    let flowerList = ["Rose", "sunFlower", "lily", "tulip", "orchid", "african Flower", "daisy", "peony", "jasmine"]
    
    var body: some View {
        
        NavigationView {
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
//        @ViewBuilder
        
        // viewbuilder lets our function have an unknown (at compile time) return type.
        // you dont need a return statement if you use @viewbuilder
    
        
        func flowerDestination(_ flower: String) -> AnyView {
            switch flower {
            case "Rose":
                return AnyView(RoseView(flowerQuantity: 10, flowerImage: "redRose", confirmOrder: true, cart: Cart() ))
            case "lily":
                return AnyView(LilyView(flowerQuantity: 10, flowerImage: "redLily", cart: Cart()))
            case "african Flower":
                return AnyView(AfricanFlowerView(flowerQuantity: 10, flowerImage: "AfricanFlower", cart: Cart()))
            case "orchid":
                return AnyView(OrchidView(flowerQuantity: 10, flowerImage: "whiteOrchid", cart: Cart()))
            case "daisy":
                return AnyView(DaisyView(flowerQuantity: 10, flowerImage: "redDaisy", cart: Cart()))
            case "peony":
                return AnyView(PeonyView(flowerQuantity: 10, flowerImage: "redPeony", cart: Cart()))
            case "jasmine":
                return AnyView(JasminView(flowerQuantity: 10, flowerImage: "jasmin1", cart: Cart()))
            case "tulip":
                return  AnyView(TulipView(flowerQuantity: 10, flowerImage: "redTulip", cart: Cart()))
            case "sunFlower":
                return AnyView(SunFlowerView(flowerQuantity: 10, flowerImage: "redSunflower", cart: Cart()))
            default:
              return AnyView(Text("Unsupported Flower"))
                
            }
               
        }
        
    }
    
        
       
        
    
    


#Preview {
    Bouqette()
}


