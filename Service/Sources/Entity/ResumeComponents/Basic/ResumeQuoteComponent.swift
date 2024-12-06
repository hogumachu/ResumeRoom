//
//  ResumeQuoteComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public struct ResumeQuoteComponent {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeQuoteComponent: ResumeComponentable {
  public static var title: LocalizedStringKey {
    "component.quote.title"
  }
  
  public static var description: LocalizedStringKey {
    "component.quote.description"
  }
}
