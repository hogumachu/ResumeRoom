//
//  ResumeComponentable.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public protocol ResumeComponentable: Hashable, Codable {
  static var title: LocalizedStringKey { get }
  static var description: LocalizedStringKey { get }
}
