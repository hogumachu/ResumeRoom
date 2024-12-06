//
//  ApplyStatus.swift
//  Service
//
//  Created by 홍성준 on 12/5/24.
//

import Foundation

public struct ApplyStatus: Hashable, Codable {
  public let id: UUID
  public let status: String
  public let hexColor: String
  
  public init(
    id: UUID,
    status: String,
    hexColor: String
  ) {
    self.id = id
    self.status = status
    self.hexColor = hexColor
  }
}
