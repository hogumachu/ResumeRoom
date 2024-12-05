//
//  Resume.swift
//  Service
//
//  Created by 홍성준 on 12/5/24.
//

import Foundation
import SwiftData

@Model
public final class Resume {
  public var title: String?
  public var createdAt: Date?
  public var updatedAt: Date?
  public var contents: String? // TODO: - 변경하기
  
  public init(
    title: String? = nil,
    createdAt: Date? = nil,
    updatedAt: Date? = nil,
    contents: String? = nil
  ) {
    self.title = title
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.contents = contents
  }
}
