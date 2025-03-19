//
//  HomeDashboardView.swift
//  Feature
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

import DesignSystem
import Entity

import ComposableArchitecture

public struct HomeDashboardView: View {
  private let store: StoreOf<HomeDashboardStore>
  
  public init(store: StoreOf<HomeDashboardStore>) {
    self.store = store
  }
  
  public var body: some View {
    VStack {
      PageListView(store: store)
      
      // TODO: - Remove this
      Button {
        store.send(.generateTapped)
      } label: {
        Text("Generate Random Page")
      }
    }
    .background(.clear)
    .onAppear { store.send(.onAppear) }
    .meshGradientBackground()
  }
}

private struct PageListView: View {
  private let store: StoreOf<HomeDashboardStore>
  
  init(store: StoreOf<HomeDashboardStore>) {
    self.store = store
  }
  
  var body: some View {
    List(store.pages) { page in
      Text(page.title)
    }
    .scrollContentBackground(.hidden)
  }
}
