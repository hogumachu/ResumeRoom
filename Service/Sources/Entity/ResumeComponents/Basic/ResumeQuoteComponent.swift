//
//  ResumeQuoteComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public struct ResumeQuoteComponent {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeQuoteComponent: ResumeComponentable {
  public static let title = "인용"
  public static let description = "인용할 내용을 작성하세요."
}
