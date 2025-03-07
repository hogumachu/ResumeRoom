//
//  HomeDashboardStore.swift
//  Feature
//
//  Created by 홍성준 on 3/7/25.
//

import Foundation

import ComposableArchitecture

@Reducer
public struct HomeDashboardStore {
  @ObservableState
  public struct State: Equatable, Identifiable {
    public let id = UUID()
    
    public init() {}
  }
  
  public enum Action {
    
  }
  
  public init() {}
}
