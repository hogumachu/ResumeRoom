//
//  Resume+DTO.swift
//  Shared
//
//  Created by 홍성준 on 3/19/25.
//

import SwiftData

import Database
import Entity

import Dependencies

extension Resume: AnyBackingObject {
  public typealias Model = ActiveSchema.ResumeModel
  
  func updating(title: String) throws -> Resume {
    try backingObject { $0.title = title }
    return .init(id: id, title: title)
  }
}
