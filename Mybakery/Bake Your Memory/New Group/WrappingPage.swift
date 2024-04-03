//
//  WrappingPage.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 1/6/24.
//

import SwiftUI

struct WrappingPage: View {
    @State var WrapColor: WrappingColor = .all
    var body: some View {
        VStack(alignment:.leading){
            let columns = [GridItem(.adaptive(minimum: 50))]
            Text ("Wrapping Color ?")
                .font(.custom("PinyonScript-Regular", size: 30))
            
            Image(WrapColor.rawValue)
                .resizable()
                .frame(width: 360 , height:  270)
                .border(Color.black, width: 7)
                .cornerRadius(20)
            Text("\(WrapColor.rawValue)")
                .font(.caption)
            LazyVGrid(columns:columns) {
                ForEach(WrappingColor.allCases, id: \.self) { wrap in
                    Button(action: {
                        WrapColor = wrap
                        
                    }) {
                        HStack{
                            Image(wrap.rawValue)
                            
                                .resizable()
                                .frame(width: 40, height: 40)
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(Color.black, lineWidth: 2)
                                    
                                )
                            
                                .padding(15)
                            
                        }
                    }
                }
            }
        }.padding()
    }
}

#Preview {
    WrappingPage()
}
