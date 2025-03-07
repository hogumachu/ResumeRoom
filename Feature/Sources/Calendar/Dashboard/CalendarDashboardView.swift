//
//  CalendarDashboardView.swift
//  Feature
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

import ComposableArchitecture

public struct CalendarDashboardView: View {
  private let store: StoreOf<CalendarDashboardStore>
  
  public init(store: StoreOf<CalendarDashboardStore>) {
    self.store = store
  }
  
  public var body: some View {
    Text("Calendar Dashboard")
  }
}
