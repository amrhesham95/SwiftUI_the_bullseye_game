//
//  ButtonLargeTextStyle.swift
//  BullsEye
//
//  Created by Amr Hesham on 12/09/2021.
//

import SwiftUI

struct ButtonLargeTextStyle: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(Font.custom("Arial Rounded MT Bold", size: 18))
      .foregroundColor(Color.black)
} }
