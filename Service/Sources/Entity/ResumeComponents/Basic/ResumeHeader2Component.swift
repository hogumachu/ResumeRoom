//
//  ResumeHeader2Component.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public struct ResumeHeader2Component {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeHeader2Component: ResumeComponentable {
  public static var title: LocalizedStringKey {
    "component.header2.title"
  }
  
  public static var description: LocalizedStringKey {
    "component.header2.description"
  }
}
