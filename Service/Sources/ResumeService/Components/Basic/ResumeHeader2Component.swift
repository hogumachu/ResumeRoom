//
//  ResumeHeader2Component.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public struct ResumeHeader2Component {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeHeader2Component: ResumeComponentable {
  public static let title = "제목2"
  public static let description = "섹션 제목(중)"
}
