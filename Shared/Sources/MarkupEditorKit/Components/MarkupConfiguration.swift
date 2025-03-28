//
//  MarkupConfiguration.swift
//  Shared
//
//  Created by 홍성준 on 3/28/25.
//

import Foundation

import MarkupEditor

public struct MarkupConfiguration: Sendable {
  public let css: CSSConvertable
  
  public init(
    css: CSSConvertable = MarkupResource.CSS.basic
  ) {
    self.css = css
  }
}

extension MarkupConfiguration {
  
  var webConfiguration: MarkupWKWebViewConfiguration {
    let configuration = MarkupWKWebViewConfiguration()
    configuration.userCss = .fileWithBundle(file: css.file, bundle: Bundle.module)
    return configuration
  }
}
