//
//  MarkupView.swift
//  Shared
//
//  Created by 홍성준 on 3/28/25.
//

import SwiftUI

import MarkupEditor

// TODO: - Setup MarkupView

public struct MarkupView: View, MarkupEditable {
  
  public var html: Binding<String>
  public var placeholder: String
  public var configuration: MarkupConfiguration
  
  public init(
    html: Binding<String>,
    placeholder: String,
    configuration: MarkupConfiguration = .init()
  ) {
    self.html = html
    self.placeholder = placeholder
    self.configuration = configuration
  }
  
  public var body: some View {
    MarkupEditorView(
      markupDelegate: self,
      configuration: configuration.webConfiguration,
      html: html,
      placeholder: placeholder
    )
  }
}

extension MarkupView: MarkupDelegate {}
