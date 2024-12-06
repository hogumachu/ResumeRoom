//
//  ResumeComponentSectionable.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public protocol ResumeComponentSectionable: Hashable, Codable {
  static var sectionTitle: LocalizedStringKey { get }
}
