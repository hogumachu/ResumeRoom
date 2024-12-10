//
//  PDFGenerator+Enviroment.swift
//  Service
//
//  Created by 홍성준 on 12/10/24.
//

import Entity
import SwiftUI

public extension EnvironmentValues {
  @Entry var pdfGenerator = PDFGenerator(
    generate: { components, style in
      // TODO: - Draw Point 설정
      components.forEach { $0.draw(at: .zero, style: style) }
    }
  )
}
