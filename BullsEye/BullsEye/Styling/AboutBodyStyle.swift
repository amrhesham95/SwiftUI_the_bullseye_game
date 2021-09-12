//
//  AboutBodyStyle.swift
//  BullsEye
//
//  Created by Amr Hesham on 12/09/2021.
//

import SwiftUI

struct AboutBodyStyle: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(Font.custom("Arial Rounded MT Bold", size: 16))
      .foregroundColor(Color.black)
      .padding(.leading, 60)
      .padding(.trailing, 60)
      .padding(.bottom, 20)
} }
