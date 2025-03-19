//
//  AnyBackingObject.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

import Dependencies

public protocol AnyBackingObject {
  associatedtype Model: PersistentModel
  
  var id: PersistentIdentifier { get }
  func backingObject(performing: ((Model) -> Void)) throws -> Model
}

public extension AnyBackingObject {
  
  @discardableResult
  func backingObject(performing: ((Model) -> Void)) throws -> Model {
    @Dependency(\.modelContextProvider) var context
    let model = try context.model(for: self)
    performing(model)
    try context.save()
    return model
  }
}
