//
//  CalendarDashboardStore.swift
//  Feature
//
//  Created by 홍성준 on 3/7/25.
//

import Foundation

import ComposableArchitecture

@Reducer
public struct CalendarDashboardStore {
  @ObservableState
  public struct State: Equatable, Identifiable {
    public let id = UUID()
    var date: Date = .now
    
    public init() {}
  }
  
  public enum Action: BindableAction {
    case binding(BindingAction<State>)
  }
  
  public init() {}
  
  public var body: some ReducerOf<Self> {
    BindingReducer()
    
    Reduce { state, action in
      return .none
    }
  }
}
