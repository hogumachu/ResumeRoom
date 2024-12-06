//
//  ResumeTodoComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public struct ResumeTodoComponent {
  public let isCompleted: Bool
  public let todo: String
  
  public init(isCompleted: Bool = false, todo: String) {
    self.isCompleted = isCompleted
    self.todo = todo
  }
}

extension ResumeTodoComponent: ResumeComponentable {
  public static let title = "이미지"
  public static let description = "URL을 통해 이미지를 나타내세요."
}
