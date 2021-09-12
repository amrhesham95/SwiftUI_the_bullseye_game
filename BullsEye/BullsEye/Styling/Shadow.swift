//
//  Shadow.swift
//  BullsEye
//
//  Created by Amr Hesham on 11/09/2021.
//

import SwiftUI

// MARK: - Shadow
//
struct Shadow: ViewModifier {
    func body(content: Content) -> some View {
        return content.shadow(color: .black, radius: 5, x: 2, y: 2)
    }
}
