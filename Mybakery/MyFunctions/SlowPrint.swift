//
//  SlowPrint.swift
//  RealBakery
//
//  Created by Ghaida Farhan on 11/18/23.
//

import SwiftUI
struct SlowPrint: View {
    let textToPrint: String
    @State private var displayedText: String = ""
    var body: some View {
        VStack{
            Text(displayedText)
        }
        .onAppear {
            SlowPrinter()
        }
    }
        func SlowPrinter () {
            var iterator = textToPrint.makeIterator()
            
            Timer.scheduledTimer(withTimeInterval: 0.10, repeats: true) {timer in
                if let nextCharacter = iterator.next() {
                    displayedText.append(nextCharacter)
                }else {
                    timer.invalidate()
                }
                
            }
        }
    }



#Preview {
    SlowPrint(textToPrint: "")
}
