//
//  SettingDashboardView.swift
//  Feature
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

import DesignSystem

import ComposableArchitecture

public struct SettingDashboardView: View {
  private let store: StoreOf<SettingDashboardStore>
  
  public init(store: StoreOf<SettingDashboardStore>) {
    self.store = store
  }
  
  public var body: some View {
    Text("Setting Dashboard")
      .meshGradientBackground()
  }
}
