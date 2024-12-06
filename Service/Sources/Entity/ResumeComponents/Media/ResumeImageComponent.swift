//
//  ResumeImageComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public struct ResumeImageComponent {
  public let url: String
  
  public init(url: String) {
    self.url = url
  }
}

extension ResumeImageComponent: ResumeComponentable {
  public static var title: LocalizedStringKey {
    "component.image.title"
  }
  
  public static var description: LocalizedStringKey {
    "component.image.description"
  }
}
