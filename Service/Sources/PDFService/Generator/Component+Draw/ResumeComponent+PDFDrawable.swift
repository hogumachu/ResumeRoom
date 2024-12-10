//
//  ResumeComponent+PDFDrawable.swift
//  Service
//
//  Created by 홍성준 on 12/10/24.
//

import DesignSystem
import Entity
import SwiftUI

extension ResumeComponent: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    switch self {
    case let .basic(content): content.draw(at: point, style: style)
    case let .media(content): content.draw(at: point, style: style)
    }
  }
}
