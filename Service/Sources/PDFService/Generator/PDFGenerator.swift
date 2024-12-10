//
//  PDFGenerator.swift
//  Service
//
//  Created by 홍성준 on 12/10/24.
//

import DesignSystem
import Entity
import Foundation

public struct PDFGenerator {
  public let generate: @Sendable (_ components: [ResumeComponent], _ style: ColorStyle) -> Void
  
  public init(generate: @Sendable @escaping (_ components: [ResumeComponent], _ style: ColorStyle) -> Void) {
    self.generate = generate
  }
}
