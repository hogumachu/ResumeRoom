//
//  ResumeDashboardView.swift
//  Feature
//
//  Created by 홍성준 on 3/19/25.
//

import SwiftUI

import DesignSystem

import ComposableArchitecture
import MarkupEditorKit

public struct ResumeDashboardView: View {
  @Bindable private var store: StoreOf<ResumeDashboardStore>
  
  public init(store: StoreOf<ResumeDashboardStore>) {
    self.store = store
  }
  
  public var body: some View {
    EmptyView()
      .meshGradientBackground()
  }
}
