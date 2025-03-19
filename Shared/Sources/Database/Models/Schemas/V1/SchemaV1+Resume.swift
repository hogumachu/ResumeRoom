//
//  SchemaV1+Resume.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

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
  
  public struct Resume: Equatable, Identifiable {
    public let id: PersistentIdentifier
    public let title: String
    
    public init(id: PersistentIdentifier, title: String) {
      self.id = id
      self.title = title
    }
  }
}

extension SchemaV1.ResumeModel: AnyEntityConvertible {
  public var entity: Resume { .init(id: persistentModelID, title: title) }
}

extension SchemaV1.Resume: AnyBackingObject {
  public typealias Model = SchemaV1.ResumeModel
  
  public func updating(title: String) throws -> Resume {
    try backingObject { $0.title = title }
    return .init(id: id, title: title)
  }
}
