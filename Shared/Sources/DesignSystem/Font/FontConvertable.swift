//
//  FontConvertable.swift
//  Shared
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

struct FontConvertable: Sendable {
  let name: String
  let family: String
  let path: String
  
#if os(macOS)
  public typealias Font = NSFont
#else
  public typealias Font = UIFont
#endif
  
  var url: URL? {
    return Bundle.module.url(forResource: path, withExtension: nil)
  }
  
  func registerIfNeeded() {
#if os(macOS)
    if let url, CTFontManagerGetScopeForURL(url as CFURL) == .none {
      CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
    }
#else
    if let url, !UIFont.fontNames(forFamilyName: family).contains(name) {
      CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
    }
#endif
  }
  
  func font(_ size: CGFloat) -> SwiftUI.Font {
    guard let font = Font(font: self, size: size) else {
      fatalError("폰트가 등록되지 않음 '\(name)' (\(family))")
    }
    #if os(macOS)
    return SwiftUI.Font.custom(font.fontName, size: font.pointSize)
    #else
    return SwiftUI.Font(font)
    #endif
  }
}

extension FontConvertable.Font {
  convenience init?(font: FontConvertable, size: CGFloat) {
    font.registerIfNeeded()
    self.init(name: font.name, size: size)
  }
}
