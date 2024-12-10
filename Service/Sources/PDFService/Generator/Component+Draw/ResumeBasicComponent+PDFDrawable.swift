//
//  ResumeBasicComponent+PDFDrawable.swift
//  Service
//
//  Created by 홍성준 on 12/10/24.
//

import DesignSystem
import Entity
import SwiftUI

// TODO: - 각 component에 맞게 그리기

extension ResumeBasicComponent: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    switch self {
    case let .text(content): content.draw(at: point, style: style)
    case let .todo(content): content.draw(at: point, style: style)
    case let .header1(content): content.draw(at: point, style: style)
    case let .header2(content): content.draw(at: point, style: style)
    case let .header3(content): content.draw(at: point, style: style)
    case let .bullet(content): content.draw(at: point, style: style)
    case let .quote(content): content.draw(at: point, style: style)
    case let .separator(content): content.draw(at: point, style: style)
    }
  }
}

extension ResumeTextComponent: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    let attributes = [
      NSAttributedString.Key.font: PlatformFont.systemFont(ofSize: 14, weight: .regular),
      NSAttributedString.Key.foregroundColor: style.labelStyle.label.light.platformColor
    ]
    text.draw(at: point, withAttributes: [:])
  }
}

extension ResumeTodoComponent: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    let attributes = [
      NSAttributedString.Key.font: PlatformFont.systemFont(ofSize: 14, weight: .regular),
      NSAttributedString.Key.foregroundColor: style.labelStyle.label.light.platformColor
    ]
    todo.draw(at: point, withAttributes: [:])
  }
}

extension ResumeHeader1Component: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    let attributes = [
      NSAttributedString.Key.font: PlatformFont.systemFont(ofSize: 24, weight: .bold),
      NSAttributedString.Key.foregroundColor: style.labelStyle.label.light.platformColor
    ]
    text.draw(at: point, withAttributes: [:])
  }
}

extension ResumeHeader2Component: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    let attributes = [
      NSAttributedString.Key.font: PlatformFont.systemFont(ofSize: 21, weight: .bold),
      NSAttributedString.Key.foregroundColor: style.labelStyle.label.light.platformColor
    ]
    text.draw(at: point, withAttributes: [:])
  }
}

extension ResumeHeader3Component: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    let attributes = [
      NSAttributedString.Key.font: PlatformFont.systemFont(ofSize: 21, weight: .bold),
      NSAttributedString.Key.foregroundColor: style.labelStyle.label.light.platformColor
    ]
    text.draw(at: point, withAttributes: [:])
  }
}

extension ResumeBulletComponent: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    let attributes = [
      NSAttributedString.Key.font: PlatformFont.systemFont(ofSize: 21, weight: .bold),
      NSAttributedString.Key.foregroundColor: style.labelStyle.label.light.platformColor
    ]
    text.draw(at: point, withAttributes: [:])
  }
}

extension ResumeQuoteComponent: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    let attributes = [
      NSAttributedString.Key.font: PlatformFont.systemFont(ofSize: 21, weight: .bold),
      NSAttributedString.Key.foregroundColor: style.labelStyle.label.light.platformColor
    ]
    text.draw(at: point, withAttributes: [:])
  }
}

extension ResumeSeparatorComponent: PDFDrawable {
  public func draw(at point: CGPoint, style: ColorStyle) {
    let attributes = [
      NSAttributedString.Key.font: PlatformFont.systemFont(ofSize: 21, weight: .bold),
      NSAttributedString.Key.foregroundColor: style.labelStyle.label.light.platformColor
    ]
  }
}
