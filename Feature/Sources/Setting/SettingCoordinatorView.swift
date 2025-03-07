//
//  SettingCoordinatorView.swift
//  Feature
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

import ComposableArchitecture
import TCACoordinators

public struct SettingCoordinatorView: View {
  private let store: StoreOf<SettingCoordinator>
  
  public init(store: StoreOf<SettingCoordinator>) {
    self.store = store
  }
  
  public var body: some View {
    TCARouter(store.scope(state: \.routes, action: \.router)) { screen in
      switch screen.case {
      case let .dashboard(store):
        SettingDashboardView(store: store)
      }
    }
  }
}
