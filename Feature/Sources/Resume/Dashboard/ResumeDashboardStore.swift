//
//  ResumeDashboardStore.swift
//  Feature
//
//  Created by 홍성준 on 3/19/25.
//

import Foundation

import ComposableArchitecture

@Reducer
public struct ResumeDashboardStore {
  @ObservableState
  public struct State: Equatable, Identifiable {
    public let id = UUID()
    var content = NSAttributedString(string: "")
    var html = ""
    
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
