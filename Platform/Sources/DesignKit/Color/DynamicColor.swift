//
//  DynamicColor.swift
//  Platform
//
//  Created by 홍성준 on 11/27/24.
//

import SwiftUI

public struct DynamicColor: Hashable, Sendable {
  public let light: Color
  public let dark: Color
  
  public init(light: Color, dark: Color) {
    self.light = light
    self.dark = dark
  }
}

public extension DynamicColor {
  func reversed() -> DynamicColor {
    .init(light: dark, dark: light)
  }
  
  func lightOnly() -> DynamicColor {
    .init(light: light, dark: light)
  }
  
  func darkOnly() -> DynamicColor {
    .init(light: dark, dark: dark)
  }
}
