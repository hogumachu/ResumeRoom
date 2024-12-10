//
//  ResumeComponentSectionable.swift
//  Service
//
//  Created by 홍성준 on 12/6/24.
//

import SwiftUI

public protocol ResumeComponentSectionable: Componentable {
  static var sectionTitle: LocalizedStringKey { get }
}
