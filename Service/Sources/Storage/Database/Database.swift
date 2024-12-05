//
//  Database.swift
//  Service
//
//  Created by 홍성준 on 12/5/24.
//

import Foundation
import SwiftData

public struct Database: Sendable {
  public let container: @Sendable () -> ModelContainer
  
  public init(container: @Sendable @escaping () -> ModelContainer) {
    self.container = container
  }
}
