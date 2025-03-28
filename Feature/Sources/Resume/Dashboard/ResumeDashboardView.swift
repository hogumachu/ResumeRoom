//
//  ResumeDashboardView.swift
//  Feature
//
//  Created by 홍성준 on 3/19/25.
//

import SwiftUI

import DesignSystem
import MarkupEditorKit

import ComposableArchitecture

public struct ResumeDashboardView: View {
  @Bindable private var store: StoreOf<ResumeDashboardStore>
  
  public init(store: StoreOf<ResumeDashboardStore>) {
    self.store = store
  }
  
  public var body: some View {
    MarkupView(
      html: $store.html,
      placeholder: "입력해 주세요."
    )
    .meshGradientBackground()
  }
}
