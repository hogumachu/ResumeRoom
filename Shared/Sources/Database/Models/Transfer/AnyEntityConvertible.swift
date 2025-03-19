//
//  AnyEntityConvertible.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

public protocol AnyEntityConvertible {
  associatedtype Entity
  var entity: Entity { get }
}
