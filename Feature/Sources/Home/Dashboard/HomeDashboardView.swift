//
//  HomeDashboardView.swift
//  Feature
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

import ComposableArchitecture

public struct HomeDashboardView: View {
  private let store: StoreOf<HomeDashboardStore>
  
  public init(store: StoreOf<HomeDashboardStore>) {
    self.store = store
  }
  
  public var body: some View {
    Text("Home Dashboard")
  }
}
