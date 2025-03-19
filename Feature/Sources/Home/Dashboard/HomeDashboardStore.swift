//
//  HomeDashboardStore.swift
//  Feature
//
//  Created by 홍성준 on 3/7/25.
//

import Foundation

import Entity
import Repository

import ComposableArchitecture

@Reducer
public struct HomeDashboardStore {
  
  @ObservableState
  public struct State: Equatable, Identifiable {
    public let id = UUID()
    
    var pages: IdentifiedArrayOf<Page> = []
    var isLoading = false
    
    public init() {}
  }
  
  public enum Action {
    case onAppear
    case generateTapped // TODO: - Remove this
    case setPages([Page])
    case setIsLoading(Bool)
  }
  
  private enum CancelID: Hashable {
    case fetchPages
  }
  
  public init() {}
  
  public var body: some ReducerOf<Self> {
    Reduce { state, action in
      switch action {
      case .onAppear:
        return fetchPages(&state)
        
      case .generateTapped:
        return generateTapped(&state)
        
      case let .setPages(pages):
        state.pages = .init(uniqueElements: pages)
        return .none
        
      case let .setIsLoading(isLoading):
        state.isLoading = isLoading
        return .none
      }
    }
  }
  
  private func generateTapped(_ state: inout State) -> Effect<Action> {
    @Dependency(PageRepository.self) var repository
    return .run { send in
      await send(.setIsLoading(true))
      _ = try repository.add(UUID().uuidString)
      await send(.setIsLoading(false))
      await send(.onAppear)
    }
  }
  
  private func fetchPages(_ state: inout State) -> Effect<Action> {
    @Dependency(PageRepository.self) var repository
    return .run { send in
      await send(.setIsLoading(true))
      let pages = try repository.fetch()
      await send(.setPages(pages))
      await send(.setIsLoading(false))
    } catch: { error, send in
      // TODO: - Handle Error
      await send(.setIsLoading(false))
    }.cancellable(id: CancelID.fetchPages, cancelInFlight: true)
  }
}
