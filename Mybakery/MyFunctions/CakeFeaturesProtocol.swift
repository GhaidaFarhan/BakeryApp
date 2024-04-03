//
//  CakeFeaturesProtocol.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 11/29/23.
//

import Foundation
//import Observation
protocol cakeFeatures {
    var flavor : Flavor { get }
    var size : Size { get }
    
}
    
protocol forCustomer {
    var servedPeople: String { get }
    var allergies : Allergies? { get }
    
    }

protocol miniCake {
    var Image: String { get }
    var Name: String { get }
    var smallDescrib: String { get }
}


// done
enum Flavor: CaseIterable {
    case chocolate, vanilla , redVelvet, Caramel
}
//
enum Allergies: CaseIterable{
    case milk, soy, eggs, wheat, peanuts, nut, non , other 
}
//
enum Ballons: CaseIterable {
    case letters, numbers , foil , helium
}
//

//done
enum Filling: CaseIterable{
    case chocolate, caramel, blueberry , strawberry , rasberry , kinder, creamCheese , Lotus
}
enum Shape : CaseIterable{
    case circle, square, rectangle, heart , cups, lunchBox
}

struct amountOfPeople: forCustomer{
    var servedPeople: String
    var allergies: Allergies?
    var size: Size
    
    
}
//@Observable
class numOfPeople: forCustomer {
    var servedPeople: String = ""
    var allergies: Allergies?
    
}

