//
//  ResumeMediaComponent+PDFDrawable.swift
//  Service
//
//  Created by 홍성준 on 12/10/24.
//

import DesignSystem
import Entity
import SwiftUI

extension ResumeMediaComponent: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    switch self {
    case let .image(content): content.draw(at: point, style: style)
    }
  }
}

extension ResumeImageComponent: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    // TODO: - 이미지 Draw
  }
}
