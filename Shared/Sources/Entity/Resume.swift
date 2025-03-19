//
//  Resume.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation
import SwiftData

public struct Resume: Equatable, Identifiable, Sendable {
  public let id: PersistentIdentifier
  public let title: String
  
  public init(id: PersistentIdentifier, title: String) {
    self.id = id
    self.title = title
  }
}
