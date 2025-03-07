//
//  MainTabCoordinatorView.swift
//  ResumeRoom
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

import Calendar
import Home
import Setting

import ComposableArchitecture
import TCACoordinators

struct MainTabCoordinatorView: View {
  
  @Bindable private var store: StoreOf<MainTabCoordinator>
  
  init(store: StoreOf<MainTabCoordinator>) {
    self.store = store
  }
  
  var body: some View {
    TabView(selection: $store.selectedTab.sending(\.tabSelected)) {
      Tab(Tabs.home.name, systemImage: Tabs.home.symbol, value: .home) {
        HomeCoordinatorView(
          store: store.scope(state: \.home, action: \.home)
        )
      }
      
      Tab(Tabs.calendar.name, systemImage: Tabs.calendar.symbol, value: .calendar) {
        CalendarCoordinatorView(
          store: store.scope(state: \.calendar, action: \.calendar)
        )
      }
      
      Tab(Tabs.setting.name, systemImage: Tabs.setting.symbol, value: .setting) {
        SettingCoordinatorView(
          store: store.scope(state: \.setting, action: \.setting)
        )
      }
    }
    .tabViewStyle(.sidebarAdaptable)
  }
}
