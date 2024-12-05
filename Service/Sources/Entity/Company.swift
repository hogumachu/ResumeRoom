//
//  Company.swift
//  Service
//
//  Created by 홍성준 on 12/5/24.
//

import Foundation
import SwiftData

@Model
public final class Company {
  public var id: UUID?
  public var name: String?
  public var feedback: String?
  public var status: ApplyStatus?
  public var appliedAt: Date?
  
  public init(
    id: UUID? = nil,
    name: String? = nil,
    feedback: String? = nil,
    status: ApplyStatus? = nil,
    appliedAt: Date? = nil
  ) {
    self.id = id
    self.name = name
    self.feedback = feedback
    self.status = status
    self.appliedAt = appliedAt
  }
}
