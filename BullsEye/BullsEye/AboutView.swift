//
//  AboutView.swift
//  BullsEye
//
//  Created by Amr Hesham on 12/09/2021.
//

import SwiftUI

struct AboutView: View {
    // Constants
    let beige = Color(red: 1.0,
                      green: 0.84,
                      blue: 0.70)
    var body: some View {
        Group {
            VStack {
                Text("🎯 Bullseye 🎯")
                    .modifier(AboutHeadingStyle())
                    .navigationBarTitle("About Bullseye")
                
                Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.")
                    .lineLimit(nil)
                    .modifier(AboutBodyStyle())
                Text("Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score.")
                    .modifier(AboutBodyStyle())
                Text("Enjoy!")
                    .modifier(AboutBodyStyle())
                
            } // VStack (content)
            .background(beige)
            
        } // VStack (for background)
        .background(Image("Background"))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
