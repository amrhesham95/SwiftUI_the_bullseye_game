//
//  LabelStyle.swift
//  BullsEye
//
//  Created by Amr Hesham on 11/09/2021.
//

import SwiftUI

struct LabelStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Arial Rounded MT Bold", size: 18))
            .foregroundColor(Color.white)
            .modifier(Shadow())
    }
}
