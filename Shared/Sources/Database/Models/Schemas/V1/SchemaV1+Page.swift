//
//  SchemaV1+Page.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

import Entity

import Dependencies

extension SchemaV1 {
  
  @Model
  public final class PageModel {
    public var title: String
    public var resumes: [ResumeModel]
    
    public init(title: String) {
      self.title = title
      self.resumes = []
    }
  }
}

extension SchemaV1.PageModel: AnyEntityConvertible {
  public var entity: Page { .init(id: persistentModelID, title: title) }
}
