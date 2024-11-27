//
//  DynamicColor+ShapeStyle.swift
//  Platform
//
//  Created by 홍성준 on 11/27/24.
//

import SwiftUI

extension DynamicColor: ShapeStyle {
  public func resolve(in environment: EnvironmentValues) -> Color {
    return environment.colorScheme == .light ? light : dark
  }
}
