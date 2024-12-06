//
//  ResumeComponentable.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public protocol ResumeComponentable: Hashable, Codable {
  static var title: String { get }
  static var description: String { get }
}
