//
//  ValueStyle.swift
//  BullsEye
//
//  Created by Amr Hesham on 11/09/2021.
//

import SwiftUI

struct ValueStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Arial Rounded MT Bold", size: 24))
            .foregroundColor(Color.yellow)
            .modifier(Shadow())
    }
}
