//
//  ResumeTextComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public struct ResumeTextComponent {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeTextComponent: ResumeComponentable {
  public static var title: LocalizedStringKey {
    "component.text.title"
  }
  
  public static var description: LocalizedStringKey {
    "component.text.description"
  }
}
