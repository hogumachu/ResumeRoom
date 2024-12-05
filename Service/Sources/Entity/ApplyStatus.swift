//
//  ApplyStatus.swift
//  Service
//
//  Created by 홍성준 on 12/5/24.
//

import Foundation
import SwiftData

@Model
public final class ApplyStatus {
  public var id: UUID?
  public var status: String?
  public var hexColor: String?
  
  public init(
    id: UUID? = nil,
    status: String? = nil,
    hexColor: String? = nil
  ) {
    self.id = id
    self.status = status
    self.hexColor = hexColor
  }
}
