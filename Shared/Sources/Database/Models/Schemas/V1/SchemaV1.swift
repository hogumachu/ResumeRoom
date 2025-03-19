//
//  SchemaV1.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

public enum SchemaV1: VersionedSchema {
  public static var versionIdentifier: Schema.Version { .init(1, 0, 0) }
  
  public static let models: [any PersistentModel.Type] = [
    PageModel.self,
    ResumeModel.self
  ]
}
