//
//  CustomizeCake.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 11/23/23.
//



/* Part 1
 add the photo picker to allow the user to insert any image
 add 2 textfields for writing any notes and for the Cake's sentence
 add a picker to choose the date that they want the cake to be delievered
 
 
 Part 2
 add  options for choosing the layers of the cake [1,2,3,4] with the inch
 asking how many tiers for the cake, what flavor , filling flavor , color, frosting and icing , shape ,any allergies , the last thing the deleviry options [pick up or delivery ] delivery ask for the address
 */

import SwiftUI

struct CustomizeCake: View {
    @State var isPickerShowing = false
    @State var selectedImage : UIImage?
    
    @State private var CakeFlavor: String = ""
    @State private var CakeFilling: String = ""
    @State private var anyOtherText: String = ""
    
     var body: some View {
        
             NavigationStack {
                 
                
                ZStack{
                    Color("color2")
                        .ignoresSafeArea()
                    ScrollView {
                    VStack{
                        HStack{
                            VStack{
                                Image("MiniCake")
                                    .resizable()
                                    .frame(width: 100 , height: 110)
                                
                                    .padding()
                                
                                NavigationLink {
                                    MiniCake(selectedFlavor: .chocolate, selectedSize: .large, selectedFilling: .blueberry, selectedShape: .circle, ballonKind: .helium, anyAllergies: .milk)
                                }label: {
                                    Text("Mini Cake")
                                        .font(.custom("PTSerif-Italic", size: 20))
                                }
                            }
                            VStack{
                                Image("PartyCake")
                                    .resizable()
                                    .frame(width: 130 , height: 140)
                                
                                    .padding(15)
                                
                                NavigationLink {
                                    PartyCake()
                                }label: {
                                    Text("Party Cake")
                                        .font(.custom("PTSerif-Italic", size: 20))
                                }
                            }
                            .padding()
                        }
                        
                        
                        VStack(alignment: .leading){
                            Text ("Have Something Already  In You’r Mind?")
                                .font(.custom("PTSerif-Bold", size: 20))
                                .padding()
                            
                            //wrapping the optional / display the Image / kinda Dangerous
                            if selectedImage != nil {
                                Image(uiImage: selectedImage!)
                                    .resizable()
                                    .frame(width: 170, height: 170)
                                    .border(.black)
                                    .cornerRadius(15)
                                
                                
                                    .padding()
                            }
                            Button {
                                isPickerShowing = true
                            } label:{
                                
                                Image(systemName: "photo.badge.arrow.down")
                                    .resizable()
                                    .frame(width:30,height: 30)
                                
                                
                            }
                            
                            .padding()
                            Text("please can you provide us with the flavor and the filling you like ?")
                                .font(.custom("PTSerif-Bold", size: 20))
                                .padding()
                            VStack{
                                TextField(
                                    "Cake Flavor",
                                    text: $CakeFlavor
                                       
                                )  .padding()
                                .disableAutocorrection(true)
                                   
                                
                                TextField(
                                    "Cake Filling",
                                    text: $CakeFilling
                                    
                                ) .disableAutocorrection(true)
                                    .padding()
                                
                                TextField(
                                    "Anything Else ?",
                                    text: $anyOtherText
                                       
                                )  .padding()
                                .disableAutocorrection(true)
                                   
                                
                                
                            } .textFieldStyle(.roundedBorder)
                            
                        }
                        .sheet(isPresented: $isPickerShowing, onDismiss: nil) {
                            ImagePicker(selectedImage: $selectedImage , isPickerShowing: $isPickerShowing)
                            
                            
                        }
                        
                        
                    }
                }
             }
         }
    }
        
}

#Preview {
    CustomizeCake()
}
