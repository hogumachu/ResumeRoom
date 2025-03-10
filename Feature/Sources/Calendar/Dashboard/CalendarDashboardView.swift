//
//  CalendarDashboardView.swift
//  Feature
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

import DesignSystem

import ComposableArchitecture

public struct CalendarDashboardView: View {
  @Bindable private var store: StoreOf<CalendarDashboardStore>
  
  public init(store: StoreOf<CalendarDashboardStore>) {
    self.store = store
  }
  
  public var body: some View {
    CalendarContentView(date: $store.date)
      .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
}
