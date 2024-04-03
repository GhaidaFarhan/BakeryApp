//
//  CartView.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 11/21/23.
//

import Foundation
//import Observation
//@Observable class Cart
class Cart: ObservableObject{
    @Published var products: [myProduct] = []
    @Published var breads: [Bread] = []
    @Published var flowers: [Flower] = []
    var totalPrice: Double {
        var total = 0.0
        for product in products {
            total +=  product.price
        }
        for theBread in breads {
            total +=  theBread.price
        }
        
        return total
    }
    // adding a function to add the item in the cart
    func addToCart(product: myProduct ){
        products.append(product)
    }
    // adding a function for the bread
    func addToCart(theBread: Bread){
        breads.append(theBread)
    }
    func addToCart(theFlower: Flower){
        flowers.append(theFlower)
    }
    
    
    func removeFromCart(){
        
    }
    
    // adding a function to delet the item and take the price away form the total
    func subTotal(product: myProduct) -> Double {
        var total1 = 0.0
        for product in products {
            total1 -= product.price
        }
        return total1
    }
    
}
