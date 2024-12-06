//
//  ResumeComponentSectionable.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import Foundation

public protocol ResumeComponentSectionable: Hashable, Codable {
  static var sectionTitle: String { get }
}
