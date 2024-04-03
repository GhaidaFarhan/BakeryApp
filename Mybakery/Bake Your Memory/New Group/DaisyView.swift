//
//  DaisyView.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 12/24/23.
//

import SwiftUI

struct DaisyView: View {
    
         @State var flowerQuantity :Int
         @State var flowerImage: String = "redDaisy"
         @State var haveCard = false
         @State var anyText: String = ""
         @State var WrapColor: WrappingColor = .all
         @ObservedObject var cart: Cart
         
         var body: some View {
             ScrollView{
                 ZStack{
                     Image(.flowerbc)
                         .resizable()
                         .ignoresSafeArea()
                     
                     VStack{
                         Image(flowerImage)
                             .resizable()
                             .frame(width: 380 , height:  450)
                             .border(Color.black, width: 9)
                             .cornerRadius(20)
                         VStack(alignment: .leading){
                             Text(Flower.daisy.name)
                                 .font(.custom("PinyonScript-Regular", size: 50).bold())
                             Text("Simple and delightful, the daisy exudes innocence and joy. With its classic white petals and golden center, it represents purity, loyalty, and the simple pleasures of life.")
                                 .font(.custom("PTSerif-Bold", size: 18))
                                 .fixedSize(horizontal: false, vertical: true)
                             
                         }.padding()
                         VStack(alignment:.leading){
                             
                             
                             Stepper("Quantity : \(flowerQuantity)", value: $flowerQuantity , in: 10 ... 40,step: 5)
                                 .padding(8)
                                 .background(.ultraThinMaterial)
                                 .cornerRadius(10)
                                 .padding()
                             
                             
                             Text("\tEach flower $1.75")
                                 .font(.caption)
                             
                         }.padding(.vertical)
                         
                         VStack(alignment: .leading){
                             HStack{
                                 Text("Customizing ")
                                 
                                     .font(.custom("PTSerif-Italic", size: 35))
                                     .bold()
                                 Divider()
                                     .frame(width:169 ,height: 2)
                                     .overlay(.black)
                             }
                             Spacer(minLength: 0.3)
                             Text("Flower's Color? ")
                             
                                 .font(.custom("PinyonScript-Regular", size: 30))
                                 .padding(5)
                             
                             HStack{
                                 
                                 Button(action: { flowerImage = "redDaisy"
                                     
                                 }) {
                                     Circle()
                                         .foregroundColor(.redflower)
                                         .frame(width: 50)
                                         .overlay(
                                             Circle()
                                                 .stroke(Color.black, lineWidth: 3)
                                             
                                         )
                                         .padding(15)
                                     
                                 }
                                 Button(action: { flowerImage = "whiteDaisy"
                                     
                                 }) {
                                     Circle()
                                         .foregroundColor(.whiteflower)
                                         .frame(width: 50)
                                         .overlay(
                                             Circle()
                                                 .stroke(Color.black, lineWidth: 3)
                                             
                                         )
                                         .padding(15)
                                 }
                                 Button(action: { flowerImage = "purpleDaisy"
                                     
                                 }) {
                                     Circle()
                                         .foregroundColor(.purpleflower)
                                         .frame(width: 50)
                                         .overlay(
                                             Circle()
                                                 .stroke(Color.black, lineWidth: 3)
                                             
                                         )
                                         .padding(15)
                                 }
                                 Button(action: { flowerImage = "pinkDaisy"
                                     
                                 }) {
                                     Circle()
                                     
                                         .foregroundColor(.pinkflower)
                                         .frame(width: 50)
                                         .overlay(
                                             Circle()
                                                 .stroke(Color.black, lineWidth: 3)
                                             
                                         )
                                         .padding(15)
                                     
                                 }
                                 
                                 
                             }
                         }
                         WrappingPage()
                         
                         VStack{
                             Toggle(isOn: $haveCard, label: {
                                 Text("Gift Card")
                                     .font(.custom("PinyonScript-Regular", size: 40))
                                 Image(systemName: "giftcard")
                                     .resizable()
                                     .foregroundColor(.black)
                                     .frame(width:50, height: 50)
                                     .padding()
                                 
                                 
                                 if haveCard == true{
                                     
                                     TextField(
                                         "Type your message",
                                         text: $anyText
                                         
                                         
                                     ) .padding(15)
                                         .background(.white)
                                     
                                         .cornerRadius(11)
                                     
                                         .disableAutocorrection(true)
                                 }
                                 
                                 
                                 
                             })
                         }
                         
                         
                         .padding()
                         .toggleStyle(SwitchToggleStyle(tint: .black))
                         
                         
                         Divider()
                             .frame(width:380 ,height: 2)
                             .overlay(.black)
                         
                         VStack(alignment: .trailing){
                             Text("Total Price:\t\t\t\t\t\t\t $\(String(format: "%1.f", calculateTotalPrice())).00")
                                 .font(.title2)
                             if haveCard == true{
                                 Text("+ $2.00 gift card")
                                     .font(.caption)
                             }
                         }
                         Spacer(minLength: 12)
                         Button{
                             
                         } label: {
                             
                             
                             
                             Label("Confirm the Order", systemImage: "")
                                 .font(.custom("PTSerif-Italic", size: 18))
                                 .padding()
                                 .foregroundColor(Color.white)
                                 .background(Color.black)
                                 .cornerRadius(12)
                             
                             
                         }
                         
                         
                     }
                 }
             }
             
         }
         func calculateTotalPrice() -> Double {
             if let price = Flower.calculatePrice(flower: .daisy, quantity: flowerQuantity) {
                 return haveCard ? price + 2.00 : price
             }
             return 0.0
         }
     
 }
#Preview {
    DaisyView(flowerQuantity: 10,flowerImage: "redDaisy", cart: Cart())
}
