//
//  ColorStyle+Enviroment.swift
//  Platform
//
//  Created by 홍성준 on 11/27/24.
//

import DesignKit
import SwiftUI

private struct ColorStyleKey: EnvironmentKey {
  static let defaultValue = ColorStyle.standard
}

public extension EnvironmentValues {
  var colorStyle: ColorStyle {
    get { self[ColorStyleKey.self] }
    set { self[ColorStyleKey.self] = newValue }
  }
}
