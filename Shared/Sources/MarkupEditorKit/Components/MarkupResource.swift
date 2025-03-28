//
//  MarkupResource.swift
//  Shared
//
//  Created by 홍성준 on 3/28/25.
//

import Foundation

public enum MarkupResource {
  
  // TODO: - Support custom css
  public enum CSS {
    case basic
  }
}


extension MarkupResource.CSS: CSSConvertable {
  
  public var file: String {
    switch self {
    case .basic: "basic.css"
    }
  }
}
