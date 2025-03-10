//
//  DynamicColor+ShapeStyle.swift
//  Shared
//
//  Created by 홍성준 on 3/10/25.
//

import SwiftUI

extension DynamicColor: ShapeStyle {
  public func resolve(in environment: EnvironmentValues) -> Color {
    return environment.colorScheme == .light ? light : dark
  }
}
