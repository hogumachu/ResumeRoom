//
//  MigrationPlan.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

enum MigrationPlan: SchemaMigrationPlan {
  
  static var schemas: [any VersionedSchema.Type] {
    [SchemaV1.self]
  }
  
  static var stages: [MigrationStage] {
    []
  }
}
