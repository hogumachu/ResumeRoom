//
//  ResumeTodoComponent.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public struct ResumeTodoComponent {
  public let isCompleted: Bool
  public let todo: String
  
  public init(isCompleted: Bool = false, todo: String) {
    self.isCompleted = isCompleted
    self.todo = todo
  }
}

extension ResumeTodoComponent: ResumeComponentable {
  public static var title: LocalizedStringKey {
    "component.todo.title"
  }
  
  public static var description: LocalizedStringKey {
    "component.todo.description"
  }
}
