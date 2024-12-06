//
//  ResumeTextComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public struct ResumeTextComponent {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeTextComponent: ResumeComponentable {
  public static let title = "텍스트"
  public static let description = "일반 텍스트를 사용해 쓰기를 시작하세요."
}
