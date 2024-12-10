//
//  PDFDrawable.swift
//  Service
//
//  Created by 홍성준 on 12/10/24.
//

import DesignSystem
import SwiftUI

public protocol PDFDrawable {
  func draw(at point: CGPoint, style: ColorStyle)
}
