//
//  ResumeHeader1Componet.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public struct ResumeHeader1Componet {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeHeader1Componet: ResumeComponentable {
  public static var title: LocalizedStringKey {
    "component.header1.title"
  }
  
  public static var description: LocalizedStringKey {
    "component.header1.description"
  }
}
