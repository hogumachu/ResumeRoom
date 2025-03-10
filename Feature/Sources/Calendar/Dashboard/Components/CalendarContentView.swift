//
//  CalendarContentView.swift
//  Feature
//
//  Created by 홍성준 on 3/10/25.
//

import SwiftUI

import DesignSystem

struct CalendarContentView: View {
  
  @Binding var date: Date
  
  private let configuration: CalendarConfiguration
  
  init(
    date: Binding<Date>,
    configuration: CalendarConfiguration = .default
  ) {
    self._date = date
    self.configuration = configuration
  }
  
  var body: some View {
#if os(macOS)
    CalendarContentMacView(configuration: configuration)
#else
    CalendarContentIOSView(
      date: _date,
      configuration: configuration,
      onDaySelection: onDaySelection
    )
#endif
  }
  
  private func onDaySelection(_ day: DateComponents) {
    guard let selectedDate = configuration.calendar.date(from: day),
          configuration.visibleDateRange.contains(selectedDate) else {
      return
    }
    date = selectedDate
  }
}


#if !os(macOS)
import HorizonCalendar

struct CalendarContentIOSView: View {
  
  private var date: Binding<Date>
  
  private let configuration: CalendarConfiguration
  private let onDaySelection: (DateComponents) -> Void
  
  init(
    date: Binding<Date>,
    configuration: CalendarConfiguration,
    onDaySelection: @escaping (DateComponents) -> Void
  ) {
    self.date = date
    self.configuration = configuration
    self.onDaySelection = onDaySelection
  }
  
  var body: some View {
    CalendarViewRepresentable(
      calendar: configuration.calendar,
      visibleDateRange: configuration.visibleDateRange,
      monthsLayout: .horizontal,
      dataDependency: nil
    )
    .days(days)
    .onDaySelection { onDaySelection($0.components) }
  }
  
  private func days(_ day: DayComponents) -> some View {
    let current = configuration.calendar.date(from: day.components)
    let isSameDay = current?.isSameDay(date.wrappedValue) == true
    return Text("\(day.day)")
      .font(isSameDay ? .pretendard(.bold, size: 16) : .pretendard(.regular, size: 16))
  }
}
#else
struct CalendarContentMacView: View {
  private let configuration: CalendarConfiguration
  
  init(configuration: CalendarConfiguration) {
    self.configuration = configuration
  }
  
  var body: some View {
    Text("TBU")
  }
}
#endif
