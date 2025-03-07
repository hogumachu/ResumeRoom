//
//  AppView.swift
//  ResumeRoom
//
//  Created by 홍성준 on 3/7/25.
//

import SwiftUI

import ComposableArchitecture

struct AppView: View {
  @Bindable var store: StoreOf<AppStore>
  
  var body: some View {
    Text("Hello world")
  }
}
