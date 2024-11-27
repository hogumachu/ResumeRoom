//
//  View+DynamicColor.swift
//  Platform
//
//  Created by 홍성준 on 11/27/24.
//

import SwiftUI

public extension View {
  func foregroundColor(dynamic color: DynamicColor) -> some View {
    modifier(ColorSchemeModifier(isForeground: true, light: color.light, dark: color.dark))
  }
  
  func backgroundColor(dynamic color: DynamicColor) -> some View {
    modifier(ColorSchemeModifier(isForeground: false, light: color.light, dark: color.dark))
  }
}
