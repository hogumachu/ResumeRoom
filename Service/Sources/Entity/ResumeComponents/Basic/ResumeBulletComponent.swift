//
//  ResumeBulletComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public struct ResumeBulletComponent {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeBulletComponent: ResumeComponentable {
  public static var title: LocalizedStringKey {
    "component.bullet.title"
  }
  
  public static var description: LocalizedStringKey {
    "component.bullet.description"
  }
}
