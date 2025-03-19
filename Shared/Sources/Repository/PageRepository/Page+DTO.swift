//
//  File.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import SwiftData

import Database
import Entity

import Dependencies

extension Page: AnyBackingObject {
  public typealias Model = ActiveSchema.PageModel
  
  func resumes() -> [Resume] {
    @Dependency(\.modelContextProvider) var context
    return (try? context.model(for: self).resumes.map(\.entity)) ?? []
  }
  
  func updating(title: String) throws -> Page {
    try backingObject { $0.title = title }
    return .init(id: id, title: title)
  }
}
