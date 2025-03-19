//
//  ResumeRepository.swift
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
public struct ResumeRepository: Sendable {
  public let fetch: @Sendable () throws -> [Resume]
  public let add: @Sendable (_ title: String) throws -> Resume
  public let delete: @Sendable (Resume) throws -> Void
}

extension ResumeRepository: DependencyKey {
  
  public static let liveValue = ResumeRepository(
    fetch: {
      @Dependency(\.modelContextProvider) var context
      var descriptor: FetchDescriptor<ActiveSchema.ResumeModel> = FetchDescriptor()
      return try context.fetch(descriptor).map(\.entity)
    },
    add: { title in
      @Dependency(\.modelContextProvider) var context
      let model = ActiveSchema.ResumeModel(title: title)
      context.insert(model)
      try context.save()
      return model.entity
    },
    delete: { resume in
      @Dependency(\.modelContextProvider) var context
      let model = try context.model(for: resume)
      let pages = model.pages
      model.pages.removeAll()
      pages.forEach {
        $0.resumes = $0.resumes.filter { $0 != model }
      }
      context.delete(model)
      try context.save()
    }
  )
}
