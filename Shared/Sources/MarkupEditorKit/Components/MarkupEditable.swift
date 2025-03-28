//
//  MarkupEditable.swift
//  Shared
//
//  Created by 홍성준 on 3/28/25.
//

import SwiftUI

public protocol MarkupEditable {
  var html: Binding<String> { get }
  var placeholder: String { get }
  var configuration: MarkupConfiguration { get }
}
