//
//  product.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 11/19/23.
//

import Foundation


 protocol  Product {
    var name : String { get }
//    var id: String { get  }
    var id: UUID { get }
    var cal : Int { get }
    var price : Double { get }
    var imageName: String? { get }
}
             // having nested struct?
struct myProduct: Identifiable, Product {
    let name : String
    var id = UUID()
    let cal : Int
    let price : Double
    var imageName: String?
    

    
}

struct Bread : Identifiable, Hashable, Product {
    var imageName: String?
    var name : String
    var price: Double
    var id = UUID()
    var cal : Int
}


