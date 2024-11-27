//
//  ColorStyle+DesignSystem.swift
//  Platform
//
//  Created by 홍성준 on 11/27/24.
//

import DesignKit
import SwiftUI

public extension ColorStyle {
  
  // TODO: - Color Design System 정의
  
  static let standard: ColorStyle = .init(
    labelStyle: .init(
      label: .init(light: .white, dark: .black),
      secondaryLabel: .init(light: .gray, dark: .gray),
      tertiaryLabel: .init(light: .gray, dark: .gray),
      quaternaryLabel: .init(light: .clear, dark: .clear)
    ),
    fillStyle: .init(
      systemFill: .init(light: .clear, dark: .clear),
      secondarySystemFill: .init(light: .clear, dark: .clear),
      tertiarySystemFill: .init(light: .clear, dark: .clear),
      quaternarySystemFill: .init(light: .clear, dark: .clear)
    ),
    tintStyle: .init(
      tintColor: .init(light: .clear, dark: .clear)
    ),
    backgroundStyle: .init(
      systemBackground: .init(light: .clear, dark: .clear),
      secondarySystemBackground: .init(light: .clear, dark: .clear),
      tertiarySystemBackground: .init(light: .clear, dark: .clear)
    ),
    groupedBackgroundStyle: .init(
      systemGroupedBackground: .init(light: .clear, dark: .clear),
      secondarySystemGroupedBackground: .init(light: .clear, dark: .clear),
      tertiarySystemGroupedBackground: .init(light: .clear, dark: .clear)
    ),
    separatorStyle: .init(
      separator: .init(light: .clear, dark: .clear),
      opaqueSeparator: .init(light: .clear, dark: .clear)
    )
  )
}
