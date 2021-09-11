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
    @State var round = 1
    var difference: Int {
        return abs(target - sliderValueAsInt)
    }
    var sliderValueAsInt: Int {
        Int(sliderValue.rounded())
    }
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
                
                isAlertPresented = true
            }) {
                Text("Hit me!")
            }
            .alert(isPresented: $isAlertPresented) {
                Alert(title: Text(alertTitle()), message: Text(roundInfo()), dismissButton: .default(Text("dismiss")){
                    startNewRound()
                })
            }
            Spacer()
            
            // Score row
            HStack {
                Button(action: {
                    startNewGame()
                }) {
                    Text("Start over")
                }
                
                Spacer()
                
                Text("Score:")
                Text("\(score)")
                Spacer()
                Text("Round:")
                Text("\(round)")
                
                Spacer()
                Button(action: {}) {
                    Text("Info")
                }
            }
            .padding(.bottom, 20)
        }
        .onAppear {
            startNewRound()
        }
    }
    
    // MARK: - Methods
    func pointsForCurrentRound() -> Int {
        let maximumScore = 100
        let bonus: Int
        let difference = target - sliderValueAsInt
        
        switch difference {
        case 0:
            bonus = 100
        case 1:
            bonus = 50
        default:
            bonus = 0
        }
        
        return  maximumScore - difference + bonus
    }
    
    func updateScore() {
        score += pointsForCurrentRound()
    }
    
    func updateTarget() {
        target = Int.random(in: 1...100)
    }
    
    func updateRound() {
        round += round
    }
        
    func roundInfo() -> String {
        "The slider's value is \(sliderValueAsInt) \n" +
            "The Target value is \(target) \n" +
            "This round's score is \(pointsForCurrentRound())"
    }
    
    func alertTitle() -> String {
        switch difference {
        case 0:
            return "Perfect!"
        case 1...5:
            return "You almost had it!"
        case 6...10:
            return "Not Bad"
        default:
            return "Are you even trying?"
        }
    }
    
    func startNewRound() {
        updateScore()
        updateRound()
        resetSliderAndTarget()
    }
    
    func startNewGame() {
        score = 0
        round = 1
        resetSliderAndTarget()
        
    }
    
    func resetSliderAndTarget() {
        sliderValue = Double.random(in: 1...100)
        target = Int.random(in: 1...100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
