//
//  AppStore.swift
//  ResumeRoom
//
//  Created by 홍성준 on 3/7/25.
//

import Foundation

import ComposableArchitecture

@Reducer
struct AppStore {
  
  @ObservableState
  enum State: Equatable {
    case mainTab(MainTabCoordinator.State)
//    case onboarding
    case splash
    
    init() { self = .splash }
  }
  
  enum Action {
    case mainTab(MainTabCoordinator.Action)
//    case onboarding
    case setState(State)
    case splashOnAppear
  }
  
  var body: some ReducerOf<Self> {
    Reduce { state, action in
      switch action {
      case .mainTab:
        return .none
        
      case let .setState(newState):
        state = newState
        return .none
        
      case .splashOnAppear:
        return .run { send in
          @Dependency(\.continuousClock) var clock
          try await clock.sleep(for: .seconds(2))
          await send(.setState(.mainTab(.init())), animation: .smooth)
        }
      }
    }
    .ifLet(\.mainTab, action: \.mainTab) {
      MainTabCoordinator()
    }
  }
}
