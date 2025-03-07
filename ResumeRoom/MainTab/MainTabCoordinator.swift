//
//  MainTabCoordinator.swift
//  ResumeRoom
//
//  Created by 홍성준 on 3/7/25.
//

import Foundation

import Calendar
import Home
import Setting

import ComposableArchitecture
import TCACoordinators

@Reducer
struct MainTabCoordinator {
  
  @ObservableState
  struct State: Equatable {
    var calendar: CalendarCoordinator.State = .init()
    var home: HomeCoordinator.State = .init()
    var setting: SettingCoordinator.State = .init()
    var selectedTab: Tabs = .home
  }
  
  enum Action {
    case calendar(CalendarCoordinator.Action)
    case home(HomeCoordinator.Action)
    case setting(SettingCoordinator.Action)
    case tabSelected(Tabs)
  }
  
  var body: some ReducerOf<Self> {
    Scope(state: \.calendar, action: \.calendar) {
      CalendarCoordinator()
    }
    Scope(state: \.home, action: \.home) {
      HomeCoordinator()
    }
    Scope(state: \.setting, action: \.setting) {
      SettingCoordinator()
    }
    Reduce { state, action in
      switch action {
      case .calendar:
        return .none
        
      case .home:
        return .none
        
      case .setting:
        return .none
        
      case let .tabSelected(tab):
        state.selectedTab = tab
        return .none
      }
    }
  }
}
