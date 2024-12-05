//
//  Folder.swift
//  Service
//
//  Created by 홍성준 on 12/5/24.
//

import Foundation
import SwiftData

@Model
public final class Folder {
  public var id: UUID?
  public var title: String?
  public var createdAt: Date?
  
  @Relationship(deleteRule: .nullify, inverse: \Resume.folder)
  public var resumes: [Resume]?
  
  public init(
    id: UUID? = nil,
    title: String? = nil,
    createdAt: Date? = nil,
    resumes: [Resume]? = nil
  ) {
    self.id = id
    self.title = title
    self.createdAt = createdAt
    self.resumes = resumes
  }
}
