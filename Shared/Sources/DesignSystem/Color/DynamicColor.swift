//
//  DynamicColor.swift
//  Shared
//
//  Created by 홍성준 on 3/10/25.
//

import SwiftUI

public struct DynamicColor: Sendable {
  public let light: Color
  public let dark: Color
  
  public init(light: Color, dark: Color) {
    self.light = light
    self.dark = dark
  }
}

extension DynamicColor {
  public init(constant: Color) {
    self = .init(light: constant, dark: constant)
  }
}
