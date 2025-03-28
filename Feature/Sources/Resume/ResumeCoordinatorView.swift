//
//  ResumeCoordinatorView.swift
//  Feature
//
//  Created by 홍성준 on 3/19/25.
//

import SwiftUI

import ComposableArchitecture
import TCACoordinators

public struct ResumeCoordinatorView: View {
  @Bindable private var store: StoreOf<ResumeCoordinator>
  
  public init(store: StoreOf<ResumeCoordinator>) {
    self.store = store
  }
  
  public var body: some View {
    TCARouter(store.scope(state: \.routes, action: \.router)) { screen in
      switch screen.case {
      case let .dashboard(store):
        ResumeDashboardView(store: store)
      }
    }
  }
}
