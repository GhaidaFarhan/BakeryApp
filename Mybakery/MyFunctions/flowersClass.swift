//
//  flowersClass.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 12/20/23.
//

import Foundation
//import Observation

/*
 To Do :
 add the name *done
 add the prices *done
 add the Images * got all the Image ,still need to have it in the assest 
 add the quantity *done
 add a small describtion
 add the link of the Instagram for more Ideas about the bouqette
 */


    var name :String{
        switch self {
        case .rose:
            return "Rose"
        case .sunFlower:
            return "Sun Flower"
        case .lily:
            return "Lily"
        case .tulip:
            return "Tulip"
        case .orchid:
            return "Orchid"
        case .africanViolet:
            return "African Violet"
        case .daisy:
            return "Daisy"
        case .windFlower:
            return "Wind Flower"
        case .peony:
            return "Peony"
        case .jasmine:
            return "Jasmine"
        }
    }
    
    var image:String{
        switch self {
            
        case .rose:
            return "rose"
        case .sunFlower:
            return "sunflower"
        case .lily:
            return "lily"
        case .tulip:
            return "tulip"
        case .orchid:
            return "orchid"
        case .africanViolet:
            return "africanflower"
        case .daisy:
            return "daisy"
        case .windFlower:
            return "windflower"
        case .peony:
            return "peony"
        case .jasmine:
            return "jasmin"
        }
    }
    var quantity: [Int] {
        switch self{
        
        case .rose:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .sunFlower:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .lily:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .tulip:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .orchid:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .africanViolet:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .daisy:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .windFlower:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .peony:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .jasmine:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        }
    }
    var price : [Double]{
        switch self{
            
            
        case .rose:// $2.00 each
            return [20.00, 30.00 , 40.00 ,50.00 ,60.00 , 70.00 , 80.00 ]
        case .sunFlower: // $2.10 each
            return [21.00, 31.05 , 42.00 ,52.05 ,63.00 , 73.05 , 84.00 ]
        case .lily: // $2.17 each
            return [21.07, 32.55 , 43.04 ,54.25 ,65.10 , 75.95 , 86.08]
        case .tulip://$2.00 each
            return [20.00, 30.00 , 40.00 ,50.00 ,60.00 , 70.00 , 80.00 ]
        case .orchid: // $ 1.08 each
            return [18.00, 27.00 , 36.00 ,45.00 ,54.00, 63.00 , 72.00 ]
        case .africanViolet: // $2.00 each
            return [20.00, 30.00 , 40.00 ,50.00 ,60.00 , 70.00 , 80.00 ]
        case .daisy: // $1.75 each
            return [17.05, 26.25 , 35.00 ,43.75 ,52.05 , 61.25 , 70.00 ]
        case .windFlower:// $1.75 each
            return [17.05, 26.25 , 35.00 ,43.75 ,52.05 , 61.25 , 70.00 ]
        case .peony:// $3.00 each
            return [30.00, 45.00 , 60.00 , 75.00 , 90.00 , 105.00 , 120.00 ]
        case .jasmine:// $1.75 each
            return [17.05, 26.25 , 35.00 ,43.75 ,52.05 , 61.25 , 70.00 ]
        }
    }



//@Observable class flowerInfo {
//    var name : Flower
//    var quantity : Int
//    var price : Double
//    
//    init(name:Flower , quantity: Int , price: Double){
//        self.name = name
//        self.quantity = quantity
//        self.price = price
//    }
//}


