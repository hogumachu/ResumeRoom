//
//  ResumeHeader3Component.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public struct ResumeHeader3Component {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeHeader3Component: ResumeComponentable {
  public static var title: LocalizedStringKey {
    "component.header3.title"
  }
  
  public static var description: LocalizedStringKey {
    "component.header3.description"
  }
}
