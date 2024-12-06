//
//  ResumeSeparatorComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public struct ResumeSeparatorComponent {
  public init() {}
}

extension ResumeSeparatorComponent: ResumeComponentable {
  public static var title: LocalizedStringKey {
    "component.separator.title"
  }
  
  public static var description: LocalizedStringKey {
    "component.separator.description"
  }
}
