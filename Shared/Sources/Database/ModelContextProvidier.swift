//
//  ModelContextProvidier.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

import Dependencies

public struct ModelContextProvider {
  public let context: ModelContext
}

extension DependencyValues {
  public var modelContextProvider: ModelContext {
    get { self[ModelContextKey.self] }
    set { self[ModelContextKey.self] = newValue }
  }
}

public enum ModelContextKey: DependencyKey {
  public static let liveValue = liveContext()
}

private func makeLiveContainer(url: URL) -> ModelContainer {
  let schema = Schema(versionedSchema: ActiveSchema.self)
  let config = ModelConfiguration(schema: schema, url: url, cloudKitDatabase: .none)
  return try! ModelContainer(for: schema, migrationPlan: MigrationPlan.self, configurations: config)
}

private let liveContainer: ModelContainer = makeLiveContainer(
  url: URL.applicationSupportDirectory.appending(path: "Models.sqlite")
)

private let memoryContainer: ModelContainer = try! makeInMemoryContainer()

private func makeInMemoryContainer() throws -> ModelContainer {
  let schema = Schema(versionedSchema: ActiveSchema.self)
  let config = ModelConfiguration(
    schema: schema,
    isStoredInMemoryOnly: true,
    groupContainer: .none,
    cloudKitDatabase: .none
  )
  return try ModelContainer(for: schema, migrationPlan: nil, configurations: config)
}

@MainActor private let liveContext: (() -> ModelContext) = {
#if DEBUG
  return memoryContainer.mainContext
#else
  return liveContainer.mainContext
#endif
}

extension ModelContext: @unchecked @retroactive Sendable {}
