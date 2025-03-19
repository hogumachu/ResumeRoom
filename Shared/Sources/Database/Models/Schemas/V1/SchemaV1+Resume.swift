//
//  SchemaV1+Resume.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

import Entity

extension SchemaV1 {
  
  @Model
  public final class ResumeModel {
    public var title: String
    @Relationship(inverse: \PageModel.resumes) public var pages: [PageModel]
    
    public init(title: String) {
      self.title = title
      self.pages = []
    }
  }
}

extension SchemaV1.ResumeModel: AnyEntityConvertible {
  public var entity: Resume { .init(id: persistentModelID, title: title) }
}
