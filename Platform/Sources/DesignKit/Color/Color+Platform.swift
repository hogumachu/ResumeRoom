//
//  Color+Platform.swift
//  Platform
//
//  Created by 홍성준 on 12/10/24.
//

import SwiftUI

public extension Color {
  var platformColor: PlatformColor {
#if canImport(UIKit)
    return UIColor(self)
#elseif canImport(AppKit)
    return NSColor(self)
#endif
  }
}
