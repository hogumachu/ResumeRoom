//
//  ResumeHeader1Componet.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public struct ResumeHeader1Componet {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeHeader1Componet: ResumeComponentable {
  public static let title = "제목1"
  public static let description = "섹션 제목(대)"
}
