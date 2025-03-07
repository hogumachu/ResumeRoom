//
//  HomeCoordinator.swift
//  Feature
//
//  Created by 홍성준 on 3/7/25.
//

import Foundation

import ComposableArchitecture
import TCACoordinators

@Reducer
public struct HomeCoordinator {
  @Reducer(state: .equatable)
  public enum Screen {
    case dashboard(HomeDashboardStore)
  }
  
  @ObservableState
  public struct State: Equatable {
    var routes: IdentifiedArrayOf<Route<Screen.State>> = [
      .root(.dashboard(.init()), embedInNavigationView: true)
    ]
    
    public init() {}
  }
  
  public enum Action {
    case router(IdentifiedRouterActionOf<Screen>)
  }
  
  public init() {}
  
  public var body: some ReducerOf<Self> {
    Reduce { state, action in
      switch action {
      case .router:
        return .none
      }
    }
    .forEachRoute(\.routes, action: \.router)
  }
}

extension HomeCoordinator.Screen.State: Identifiable {
  public var id: UUID {
    switch self {
    case let .dashboard(state):
      return state.id
    }
  }
}
