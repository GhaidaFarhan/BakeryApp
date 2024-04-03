//
//  MiniCake.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 11/26/23.
//

import SwiftUI


enum Size: CaseIterable {
    case mini, small, medium, large
    
    var servedPeople: String {
        switch self {
        case .mini:
            return "1 - 2"
        case .small: 
            return "4 - 6"
        case .medium:
            return "8 - 10"
        case .large: 
            return "12 - 14"
        }
    }
}
struct InformationForCake : Identifiable, miniCake{
    var id : String { Name }
    var Image: String
    var Name: String
    var smallDescrib: String

}

 var selectedShapeInfo : [InformationForCake] = [
InformationForCake (Image: "CircleCake", Name: "Circle Cake", smallDescrib: "A classic delight with a round shape, the circle cake is a timeless choice that combines moist layers with creamy frosting, making it suitable for various celebrations."),
InformationForCake (Image: "HeartCake", Name: "Heart Cake", smallDescrib: "Crafted with love, the heart cake is a romantic treat featuring tender layers and rich frosting"),
InformationForCake (Image: "RectangleCake", Name: "Rectangle Cake", smallDescrib: "Simple yet delicious, the rectangle cake offers convenience with its sheet-like structure, making it easy to serve at gatherings."),
InformationForCake (Image: "SquareCake", Name: "Square Cake", smallDescrib: "Modern and chic, the square cake presents a sleek design with layers of sponge and frosting"),
InformationForCake (Image: "LunchBox", Name: "LunchBox Cake", smallDescrib: "Compact and portable, the lunchbox cake offers a sweet delight designed for on-the-go enjoyment."),
InformationForCake (Image: "singleCup", Name: "SingleCup Cake", smallDescrib: "Uniquely presented in coffee cups, these single cup cakes is a delightful combination of moist cake and delectable frosting ")]

struct MiniCake: View {
    @State var selectedFlavor : Flavor
    @State var selectedSize : Size
    @State var selectedFilling : Filling
    @State var selectedShape : Shape
    @State var isShowingShape =  false
    @State var ballonKind : Ballons
    @State var anyAllergies: Allergies
    @State  private var allirgiesText = ""
    @State var ballonColor : String = "Silver"
    var body: some View {
        
        NavigationView{
            ScrollView{
                ZStack {
                    
                    Image(.cakeBc)
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)

                    
                    
                    VStack{
                        HStack{
                            Divider()
                                .frame(width:110 ,height: 3)
                                .overlay(.white)
                            
                            Text("  Custom Your Cake")
                                .foregroundStyle(.white)
                                .font(.custom("PinyonScript-Regular", size: 35 ))
                                .bold()
                            
                            Divider()
                                .frame(width:100 ,height: 3)
                                .overlay(.white)
                            
                        }
                        
                        List{
                            Section(header: Text("")){
                                Picker("Flavor", selection: $selectedFlavor){
                                    ForEach(Flavor.allCases, id: \.self) { flavor in
                                        Text("\(flavor)".capitalized).tag(flavor)
                                    }
                                }
                            }
                            Section(header: Text("")){
                                Picker("Shape" , selection: $selectedShape){
                                    ForEach(Shape.allCases,  id: \.self)
                                    {size in
                                        Text("\(size)".capitalized).tag(size)}
                                    
                                }
                                
                                VStack(alignment:.leading){
                                    Button("􀁜") {
                                        self.isShowingShape = true
                                    }
                                    .popover(isPresented: $isShowingShape){
                                        
                                        HStack(alignment: .center){
                                            ScrollView{
                                                ForEach(selectedShapeInfo){cake in
                                                    HStack{
                                                        Image(cake.Image)
                                                            .resizable()
                                                            .frame(width: 100, height: 100)
                                                            .border(.black)
                                                            .cornerRadius(15)
                                                        VStack(alignment: .leading){
                                                            Text(cake.Name)
                                                                .font(.title2)
                                                            Text(cake.smallDescrib)
                                                                .font(.caption)
                                                            
                                                            Divider()
                                                                .frame(width: 230, height: 1)
                                                                .overlay(.black)
                                                            
                                                        }
                                                    } .padding()
                                                        .background(.ultraThinMaterial)
                                                        .cornerRadius(15)
                                                    
                                                }
                                            }.padding()
                                                .background(.ultraThinMaterial)
                                                .border(.black)
                                                .cornerRadius(12)
                                            
                                        }
                                    }
                                }
                            }
                            
                            Section(header: Text("")){
                                Picker("Size" , selection: $selectedSize){
                                    ForEach(Size.allCases, id: \.self)
                                    {size in
                                        Text("\(size)".capitalized).tag(size)}
                                }
                                // ask about having this as a genric
                                Text("Serves \(selectedSize.servedPeople) people")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                
                                
                            }
                            Section(header: Text("")){
                                Picker("Filling" , selection: $selectedFilling){
                                    ForEach(Filling.allCases, id: \.self)
                                    {fill in
                                        Text("\(fill)".capitalized).tag(fill)}
                                }
                                
                            }
                            Section(header: Text("")){
                                Picker("Allergies", selection: $anyAllergies){
                                    ForEach(Allergies.allCases, id: \.self)
                                    {allergie in
                                        Text("\(allergie)".capitalized).tag(allergie)
                                        
                                    }
                                }
                                if anyAllergies == .other {
                                    
                                    TextField(
                                        "Other Allergie?",
                                        text: $allirgiesText
                                        
                                        
                                    ).foregroundColor(.black)
                                        .bold()
                                        .disableAutocorrection(true)
                                    
                                }
                            }
                            
                        }
                        
              NavigationLink{
                           Bouqette()
                        }label: {
                            Label("Want to get Bouqette?",systemImage: "camera.macro.circle")
                            
                                .padding()
                                .background(.ultraThinMaterial)
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                        }.padding()
//                        HStack{
//                            Divider()
//                                .frame(width:107 ,height: 3)
//                                .overlay(.black)
//                            
//                            Text("Candles \tand \tTopper")
//                                .font(.custom("PinyonScript-Regular", size: 35 ))
//                                .bold()
//                            
//                            Divider()
//                                .frame(width:107 ,height: 3)
//                                .overlay(.black)
//                            
//                        }
//                        List{
//                            Picker("Candle" , selection: $ballonKind){
//                                ForEach(Ballons.allCases, id: \.self)
//                                {fill in
//                                    Text("\(fill)".capitalized).tag(fill)}
//                            }
//                            .pickerStyle(.segmented)
//                            
//                            if ballonKind == .letters{
//                                let rowsNum = [GridItem(.adaptive(minimum: 50))]
//                                LazyHGrid(rows: rowsNum){
//                                    Image("Asilver")
//                                        .resizable()
//                                        .frame(width: 70, height: 70)
//                                    HStack{
//                                        Button(action: { ballonColor = "silver"
//                                            
//                                        }) {
//                                            Circle()
//                                                .foregroundColor(.silver)
//                                                .frame(width: 15)
//                                                .overlay(
//                                                    Circle()
//                                                        .stroke(Color.black, lineWidth: 3)
//                                                    
//                                                )
//                                                .padding(15)
//                                        }
//                                        Button(action: { ballonColor = "silver"
//                                            
//                                        }) {
//                                            Circle()
//                                                .foregroundColor(.silver)
//                                                .frame(width: 15)
//                                                .overlay(
//                                                    Circle()
//                                                        .stroke(Color.black, lineWidth: 3)
//                                                    
//                                                )
//                                                .padding(15)
//                                        }
//                                        
//                                    }
//                                    
//                                }
//                                
//                                
//                            }
//                            
//                            
//                            
//                        }

                        
                    
                    }
                }.scrollContentBackground(.hidden)
                
            }
        }
    }
}
    

#Preview {
    MiniCake(selectedFlavor: .chocolate, selectedSize: .large , selectedFilling: .blueberry, selectedShape: .circle, ballonKind: .helium, anyAllergies: .milk)
}

