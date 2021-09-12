//
//  AboutHeadingStyle.swift
//  BullsEye
//
//  Created by Amr Hesham on 12/09/2021.
//

import SwiftUI

struct AboutHeadingStyle: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(Font.custom("Arial Rounded MT Bold", size: 30))
      .foregroundColor(Color.black)
      .padding(.top, 20)
      .padding(.bottom, 20)
} }
