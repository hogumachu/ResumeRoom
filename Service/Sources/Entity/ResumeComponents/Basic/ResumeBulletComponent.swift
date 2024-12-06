//
//  ResumeBulletComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public struct ResumeBulletComponent {
  public let text: String
  
  public init(text: String) {
    self.text = text
  }
}

extension ResumeBulletComponent: ResumeComponentable {
  public static let title = "글머리 기호 목록"
  public static let description = "간단한 글머리 기호 목록을 생성하세요."
}
