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
  public var id: UUID?
  public var title: String?
  public var createdAt: Date?
  public var updatedAt: Date?
  public var contents: [ResumeComponent]? // TODO: - 변경하기
  public var folder: Folder?
  
  @Relationship(deleteRule: .cascade)
  public var companies: [Company]?
  
  public init(
    id: UUID? = nil,
    title: String? = nil,
    createdAt: Date? = nil,
    updatedAt: Date? = nil,
    contents: [ResumeComponent]? = nil,
    folder: Folder? = nil,
    companies: [Company]? = nil
  ) {
    self.id = id
    self.title = title
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.contents = contents
    self.folder = folder
    self.companies = companies
  }
}
