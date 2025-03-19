//
//  PageRepository.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

import Database
import Entity

import Dependencies
import DependenciesMacros

@DependencyClient
public struct PageRepository: Sendable {
  public let fetch: @Sendable () throws -> [Page]
  public let add: @Sendable (_ title: String) throws -> Page
  public let delete: @Sendable (Page) throws -> Void
}

extension PageRepository: DependencyKey {
  
  public static let liveValue = PageRepository(
    fetch: {
      @Dependency(\.modelContextProvider) var context
      let descriptor = FetchDescriptor<ActiveSchema.PageModel>()
      return try context.fetch(descriptor).map(\.entity)
    },
    add: { title in
      @Dependency(\.modelContextProvider) var context
      let model = ActiveSchema.PageModel(title: title)
      context.insert(model)
      try context.save()
      return model.entity
    },
    delete: { page in
      @Dependency(\.modelContextProvider) var context
      let model = try context.model(for: page)
      context.delete(model)
      try context.save()
    }
  )
}
