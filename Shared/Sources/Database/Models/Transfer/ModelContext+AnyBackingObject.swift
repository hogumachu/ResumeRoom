//
//  ModelContext+AnyBackingObject.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

public extension ModelContext {
  
  func model<T: AnyBackingObject>(for object: T) throws -> T.Model {
    guard let model = model(for: object.id) as? T.Model else {
      throw DatabaseError.emptyModel
    }
    return model
  }
}
