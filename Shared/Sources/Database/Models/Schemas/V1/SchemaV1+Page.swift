//
//  SchemaV1+Page.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

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
  
  public struct Page: Equatable, Identifiable {
    public let id: PersistentIdentifier
    public let title: String
    
    public init(id: PersistentIdentifier, title: String) {
      self.id = id
      self.title = title
    }
  }
}

extension SchemaV1.PageModel: AnyEntityConvertible {
  public var entity: SchemaV1.Page { .init(id: persistentModelID, title: title) }
}

extension SchemaV1.Page: AnyBackingObject {
  public typealias Model = SchemaV1.PageModel
  
  public func resumes() -> [Resume] {
    @Dependency(\.modelContextProvider) var context
    return (try? context.model(for: self).resumes.map(\.entity)) ?? []
  }
  
  public func updating(title: String) throws -> SchemaV1.Page {
    try backingObject { $0.title = title }
    return .init(id: id, title: title)
  }
}
