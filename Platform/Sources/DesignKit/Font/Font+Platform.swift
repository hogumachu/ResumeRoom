//
//  Font+Platform.swift
//  Platform
//
//  Created by 홍성준 on 12/10/24.
//

import SwiftUI

public extension Font {
  var platformFont: PlatformFont {
#if canImport(UIKit)
    return UIFont.font(from: self)
#elseif canImport(AppKit)
    return NSFont.font(from: self)
#endif
  }
}

#if canImport(UIKit)
extension UIFont {
  static func font(from font: Font) -> UIFont {
    let style: UIFont.TextStyle = {
      switch font {
      case .largeTitle: return .largeTitle
      case .title: return .title1
      case .title2: return .title2
      case .title3: return .title3
      case .headline: return .headline
      case .subheadline: return .subheadline
      case .callout: return .callout
      case .caption: return .caption1
      case .caption2: return .caption2
      case .footnote: return.footnote
      default: return .body
      }
    }()
    return .preferredFont(forTextStyle: style)
  }
}
#elseif canImport(AppKit)
extension NSFont {
  static func font(from font: Font) -> NSFont {
    let style: NSFont.TextStyle = {
      switch font {
      case .largeTitle: return .largeTitle
      case .title: return .title1
      case .title2: return .title2
      case .title3: return .title3
      case .headline: return .headline
      case .subheadline: return .subheadline
      case .callout: return .callout
      case .caption: return .caption1
      case .caption2: return .caption2
      case .footnote: return.footnote
      default: return .body
      }
    }()
    return .preferredFont(forTextStyle: style)
  }
}
#endif
