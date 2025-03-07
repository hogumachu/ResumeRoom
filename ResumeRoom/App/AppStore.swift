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
  
  struct State: Equatable {}
  
  enum Action {}
  
  var body: some ReducerOf<Self> {
    Reduce { state, action in
      return .none
    }
  }
}
