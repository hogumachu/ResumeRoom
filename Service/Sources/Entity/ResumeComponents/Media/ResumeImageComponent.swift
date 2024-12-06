//
//  ResumeImageComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public struct ResumeImageComponent {
  public let url: String
  
  public init(url: String) {
    self.url = url
  }
}

extension ResumeImageComponent: ResumeComponentable {
  public static let title = "이미지"
  public static let description = "링크를 통해 이미지를 추가하세요."
}
