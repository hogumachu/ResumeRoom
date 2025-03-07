//
//  CalendarCoordinatorView.swift
//  Feature
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

import ComposableArchitecture
import TCACoordinators

public struct CalendarCoordinatorView: View {
  @Bindable private var store: StoreOf<CalendarCoordinator>
  
  public init(store: StoreOf<CalendarCoordinator>) {
    self.store = store
  }
  
  public var body: some View {
    TCARouter(store.scope(state: \.routes, action: \.router)) { screen in
      switch screen.case {
      case let .dashboard(store):
        CalendarDashboardView(store: store)
      }
    }
  }
}
