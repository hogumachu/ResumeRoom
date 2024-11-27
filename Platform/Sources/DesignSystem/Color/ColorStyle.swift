//
//  ColorStyle.swift
//  Platform
//
//  Created by 홍성준 on 11/27/24.
//

import DesignKit
import SwiftUI

public struct ColorStyle: Hashable, Sendable {
  public let labelStyle: LabelColorStyle
  public let fillStyle: FillColorStyle
  public let tintStyle: TintColorStyle
  public let backgroundStyle: StandardContentBackgroundStyle
  public let groupedBackgroundStyle: GroupedContentBackgroundStyle
  public let separatorStyle: SeparatorColorStyle
  
  public init(
    labelStyle: LabelColorStyle,
    fillStyle: FillColorStyle,
    tintStyle: TintColorStyle,
    backgroundStyle: StandardContentBackgroundStyle,
    groupedBackgroundStyle: GroupedContentBackgroundStyle,
    separatorStyle: SeparatorColorStyle
  ) {
    self.labelStyle = labelStyle
    self.fillStyle = fillStyle
    self.tintStyle = tintStyle
    self.backgroundStyle = backgroundStyle
    self.groupedBackgroundStyle = groupedBackgroundStyle
    self.separatorStyle = separatorStyle
  }
}

public struct LabelColorStyle: Hashable, Sendable {
  public let label: DynamicColor
  public let secondaryLabel: DynamicColor
  public let tertiaryLabel: DynamicColor
  public let quaternaryLabel: DynamicColor
  
  public init(
    label: DynamicColor,
    secondaryLabel: DynamicColor,
    tertiaryLabel: DynamicColor,
    quaternaryLabel: DynamicColor
  ) {
    self.label = label
    self.secondaryLabel = secondaryLabel
    self.tertiaryLabel = tertiaryLabel
    self.quaternaryLabel = quaternaryLabel
  }
}

public struct FillColorStyle: Hashable, Sendable {
  public let systemFill: DynamicColor
  public let secondarySystemFill: DynamicColor
  public let tertiarySystemFill: DynamicColor
  public let quaternarySystemFill: DynamicColor
  
  public init(
    systemFill: DynamicColor,
    secondarySystemFill: DynamicColor,
    tertiarySystemFill: DynamicColor,
    quaternarySystemFill: DynamicColor
  ) {
    self.systemFill = systemFill
    self.secondarySystemFill = secondarySystemFill
    self.tertiarySystemFill = tertiarySystemFill
    self.quaternarySystemFill = quaternarySystemFill
  }
}

public struct TintColorStyle: Hashable, Sendable {
  public let tintColor: DynamicColor
  
  public init(tintColor: DynamicColor) {
    self.tintColor = tintColor
  }
}

public struct StandardContentBackgroundStyle: Hashable, Sendable {
  public let systemBackground: DynamicColor
  public let secondarySystemBackground: DynamicColor
  public let tertiarySystemBackground: DynamicColor
  
  public init(
    systemBackground: DynamicColor,
    secondarySystemBackground: DynamicColor,
    tertiarySystemBackground: DynamicColor
  ) {
    self.systemBackground = systemBackground
    self.secondarySystemBackground = secondarySystemBackground
    self.tertiarySystemBackground = tertiarySystemBackground
  }
}

public struct GroupedContentBackgroundStyle: Hashable, Sendable {
  public let systemGroupedBackground: DynamicColor
  public let secondarySystemGroupedBackground: DynamicColor
  public let tertiarySystemGroupedBackground: DynamicColor
  
  public init(
    systemGroupedBackground: DynamicColor,
    secondarySystemGroupedBackground: DynamicColor,
    tertiarySystemGroupedBackground: DynamicColor
  ) {
    self.systemGroupedBackground = systemGroupedBackground
    self.secondarySystemGroupedBackground = secondarySystemGroupedBackground
    self.tertiarySystemGroupedBackground = tertiarySystemGroupedBackground
  }
}

public struct SeparatorColorStyle: Hashable, Sendable {
  public let separator: DynamicColor
  public let opaqueSeparator: DynamicColor
  
  public init(separator: DynamicColor, opaqueSeparator: DynamicColor) {
    self.separator = separator
    self.opaqueSeparator = opaqueSeparator
  }
}
