//
//  ResumeHeader3Component.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public struct ResumeHeader3Component {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeHeader3Component: ResumeComponentable {
  public static let title = "제목3"
  public static let description = "섹션 제목(소)"
}
