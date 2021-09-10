//
//  ContentView.swift
//  BullsEye
//
//  Created by Amr Hesham on 07/09/2021.
//

import SwiftUI

// MARK: - ContentView
//
struct ContentView: View {
    
    // MARK: - Properties
    @State var isAlertPresented: Bool = false
    @State var sliderValue: Double = 50
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            Spacer()
            // Target row
            HStack {
                Text("Put the bullseye as close as you can to: ")
                Text("100")
            }
            
            
            // Slider row
            HStack {
                Text("1")
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
            }
            
            Spacer()
            
            // Button Row
            Button(action: {
                isAlertPresented = true
            }) {
                Text("Hit me!")
            }
            .alert(isPresented: $isAlertPresented) {
                Alert(title: Text("Hello there!"), message: Text("Slider value is \(Int(sliderValue.rounded()))"), dismissButton: .default(Text("dismiss")))
            }
            Spacer()
            
            // Score row
            HStack {
                Button(action: {}) {
                    Text("Start over")
                }
                
                Spacer()
                
                Text("Score:")
                Text("999999")
                Spacer()
                Text("Round:")
                Text("999")
                
                Spacer()
                Button(action: {}) {
                    Text("Info")
                }
            }
            .padding(.bottom, 20)
        }
    }
    
    // MARK: - Methods
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
