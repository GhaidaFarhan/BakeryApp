//
//  flowerProtocol .swift
//  Mybakery
//
//  Created by Ghaida Farhan on 12/21/23.
//

import Foundation
//import Observation



/*
 To Do :
 add the name *done
 add the prices *done
 add the Images * got all the Image ,still need to add it in the assest * done
 add the quantity *done
 add a small describtion
 add the link of the Instagram for more Ideas about the bouqette
 */

protocol flowerInfo {
    var image: String { get }
    var name: String { get }
    var price: Double { get }
}

enum Flower : CaseIterable {
    case rose , sunFlower , lily , tulip , orchid , africanFlower , daisy ,  peony , jasmine
    
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
        case .africanFlower:
            return "African Violet"
        case .daisy:
            return "Daisy"
        
        case .peony:
            return "Peony"
        case .jasmine:
            return "Jasmine"
        }
    }
    
    var image: String {
        switch self {
            
        case .rose:
            return "rose1"
        case .sunFlower:
            return "sunflower1"
        case .lily:
            return "lily1"
        case .tulip:
            return "tulip1"
        case .orchid:
            return "orchid1"
        case .africanFlower:
            return "africanflower1"
        case .daisy:
            return "daisy1"
        case .peony:
            return "peony1"
        case .jasmine:
            return "jasmin1"
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
        case .africanFlower:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .daisy:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .peony:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        case .jasmine:
            return [10, 15 , 20 ,25 ,30 , 35 ,40 ]
        }
    }
    var price : [ Double ]{
        switch self{
            
            
        case .rose:// $2.00 each
            return [20.00, 30.00 , 40.00 ,50.00 ,60.00 , 70.00 , 80.00 ]
        case .sunFlower: // $2.10 each
            return [21.00, 31.05 , 42.00 ,52.05 ,63.00 , 73.05 ,84.00]
        case .lily: // $2.17 each20:
            return [21.07, 32.55 , 43.04 ,54.25 ,65.10 , 75.95 , 86.08]
        case .tulip://$2.00 each20:
            return [20.00, 30.00 , 40.00 ,50.00 ,60.00 , 70.00 ,80.00]
        case .orchid: // $ 1.08 each20:
            return [18.00, 27.00 , 36.00 ,45.00 ,54.00, 63.00 , 72.00]
        case .africanFlower: // $2.00 eac20:h
            return [20.00, 30.00 , 40.00 ,50.00 ,60.00 , 70.00 , 80.00]
        case .daisy: // $1.75 15:each20:
            return [17.05, 26.25 , 35.00 ,43.75 ,52.05 ,61.25 , 70.00]
        case .peony:// $3.00 e15:ach20:
            return [30.00, 45.00 , 60.00 ,75.00 ,90.00 , 105.00 , 120.00]
        case .jasmine:// $1.7515: each20:
            return [17.05, 26.25 , 35.00 ,43.75 ,52.05 ,61.25 , 70.00]
            
            
        }
    }
    
    
    

    static func calculatePrice(flower: Flower, quantity: Int) -> Double? {
           guard let index = flower.quantity.firstIndex(of: quantity),
                 index < flower.price.count else {
               return nil
           }

           return flower.price[index]
       }
    
    // if you decide to make this an instance property, ie `Flower.daisy.calculatePrice(quantity: 5)`
    func calculatePrice(quantity: Int) -> Double { 
        return 0
    }
}
struct flowers: flowerInfo{
    var image: String
    var name: String
    var price: Double
    
    
   
}

enum WrappingColor: String, CaseIterable {
        case all = "AllColors"
        case one = "01"
        case two = "02"
        case three = "03"
        case four = "04"
        case five = "05"
        case six = "06"
        case seven = "07"
        case eight = "08"
        case nine = "09"
        case ten = "10"
        case eleven = "11"
        case twelve = "12"
        case thirteen = "13"
        case fourteen = "14"
        case fifteen = "15"
        case sixteen = "16"
        case seventeen = "17"
        case eighteen = "18"
        case nineteen = "19"
        case twenty = "20"
}

















