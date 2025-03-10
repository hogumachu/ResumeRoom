//
//  DynamicColor+DesignSystem.swift
//  Shared
//
//  Created by 홍성준 on 3/10/25.
//

import SwiftUI

public extension DynamicColor {
  
  static let primary = DynamicColor(constant: .init(hex: "#4CEC8B"))
  static let secondary = DynamicColor(constant: .init(hex: "#478BFF"))
  static let tertiary = DynamicColor(constant: .init(hex: "#DDF34E"))
  
  static let background = DynamicColor(light: .white, dark: .black)
  static let textColor = DynamicColor(light: .black, dark: .white)
  
  static let lightGray = DynamicColor(light: .init(hex: "#F0F0F0"), dark: .init(hex: "#D3D3D3"))
  static let mediumGray = DynamicColor(light: .init(hex: "#A0A0A0"), dark: .init(hex: "#8E8E8E"))
  static let darkGray = DynamicColor(light: .init(hex: "#D3D3D3"), dark: .init(hex: "#1C1C1D"))
}
