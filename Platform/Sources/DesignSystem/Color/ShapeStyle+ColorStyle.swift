//
//  ShapeStyle+ColorStyle.swift
//  Platform
//
//  Created by 홍성준 on 11/27/24.
//

import DesignKit
import SwiftUI

public extension ShapeStyle where Self == Color {
  
  // MARK: - Label Style
  
  static var label: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.labelStyle.label
  }
  
  static var secondaryLabel: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.labelStyle.secondaryLabel
  }
  
  static var tertiaryLabel: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.labelStyle.tertiaryLabel
  }
  
  static var quaternaryLabel: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.labelStyle.quaternaryLabel
  }
  
  // MARK: - Fill Style
  
  static var systemFill: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.fillStyle.systemFill
  }
  
  static var secondarySystemFill: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.fillStyle.secondarySystemFill
  }
  
  static var tertiarySystemFill: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.fillStyle.tertiarySystemFill
  }
  
  static var quaternarySystemFill: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.fillStyle.quaternarySystemFill
  }
  
  // MARK: - Tint Style
  
  static var tintColor: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.tintStyle.tintColor
  }
  
  // MARK: - Background Style
  
  static var systemBackground: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.backgroundStyle.systemBackground
  }
  
  static var secondarySystemBackground: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.backgroundStyle.secondarySystemBackground
  }
  
  static var tertiarySystemBackground: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.backgroundStyle.tertiarySystemBackground
  }
  
  // MARK: - Grouped Background Style
  
  static var systemGroupedBackground: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.groupedBackgroundStyle.systemGroupedBackground
  }
  
  static var secondarySystemGroupedBackground: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.groupedBackgroundStyle.secondarySystemGroupedBackground
  }
  
  static var tertiarySystemGroupedBackground: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.groupedBackgroundStyle.tertiarySystemGroupedBackground
  }
  
  // MARK: - Separator Style
  
  static var separator: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.separatorStyle.separator
  }
  
  static var opaqueSeparator: DynamicColor {
    @Environment(\.colorStyle) var style
    return style.separatorStyle.opaqueSeparator
  }
}
