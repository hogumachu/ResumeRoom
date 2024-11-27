//
//  ColorSchemeModifier.swift
//  Platform
//
//  Created by 홍성준 on 11/27/24.
//

import SwiftUI

// MARK: - Public

public extension View {
  func foregroundColor(light: Color, dark: Color) -> some View {
    modifier(ColorSchemeModifier(isForeground: true, light: light, dark: dark))
  }
  
  func backgroundColor(light: Color, dark: Color) -> some View {
    modifier(ColorSchemeModifier(isForeground: false, light: light, dark: dark))
  }
}

// MARK: - Internal

struct ColorSchemeModifier: ViewModifier {
  @Environment(\.colorScheme) var colorScheme
  
  let isForeground: Bool
  let light: Color
  let dark: Color
  
  var color: Color {
    colorScheme == .light ? light : dark
  }
  
  func body(content: Content) -> some View {
    if isForeground {
      content
        .foregroundStyle(color)
    } else {
      content
        .backgroundStyle(color)
    }
  }
}
