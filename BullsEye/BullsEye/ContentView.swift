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
    
    // MARK: - Body
    var body: some View {
        VStack {
            Text("Welcome to my first app!")
                .fontWeight(.heavy)
                .foregroundColor(.green)
                .padding()
            
            Button(action: {
                isAlertPresented = true
            }) {
                Text("Hit me!")
            }
            .alert(isPresented: $isAlertPresented) {
                Alert(title: Text("Hello there!"), message: Text("This is my first pop-up"), dismissButton: .default(Text("dismiss")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
