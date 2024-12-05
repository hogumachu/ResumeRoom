//
//  Database+Enviroment.swift
//  Service
//
//  Created by 홍성준 on 12/5/24.
//

import Entity
import Foundation
import SwiftData
import SwiftUI

// TODO: - Cloud Kit Setup

private let container: ModelContainer = {
  do {
    let schema = Schema([])
    let configuration = ModelConfiguration(
      schema: schema,
      isStoredInMemoryOnly: true
    )
    return try ModelContainer(
      for: schema,
      configurations: configuration
    )
  } catch {
    fatalError()
  }
}()

public extension EnvironmentValues {
  @Entry var database = Database(container: { container })
}
