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
    @State var target: Int = Int.random(in: 1...100)
    @State var score: Int = 0
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            Spacer()
            // Target row
            HStack {
                Text("Put the bullseye as close as you can to: ")
                Text("\(target)")
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
                updateScore()
                isAlertPresented = true
            }) {
                Text("Hit me!")
            }
            .alert(isPresented: $isAlertPresented) {
                Alert(title: Text("Stats"), message: Text(roundInfo()), dismissButton: .default(Text("dismiss")))
            }
            Spacer()
            
            // Score row
            HStack {
                Button(action: {}) {
                    Text("Start over")
                }
                
                Spacer()
                
                Text("Score:")
                Text("\(score)")
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
    func pointsForCurrentRound() -> Int {
        var difference: Int
        let sliderValueAsInt = Int(sliderValue.rounded())
        if sliderValueAsInt > target {
            difference =  sliderValueAsInt - target
        } else if sliderValueAsInt < target {
            difference = target - sliderValueAsInt
        } else {
            difference = 0
        }
        
        return 100 - difference
    }
    
    func updateScore() {
        score += pointsForCurrentRound()
    }
    
    func roundInfo() -> String {
        "The slider's value is \(sliderValue) \n" +
            "The Target value is \(target) \n" +
            "This round's score is \(pointsForCurrentRound())"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
