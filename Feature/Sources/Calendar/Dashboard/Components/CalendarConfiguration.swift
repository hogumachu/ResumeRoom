//
//  CalendarConfiguration.swift
//  Feature
//
//  Created by 홍성준 on 3/10/25.
//

import Foundation

import UtilKit

public struct CalendarConfiguration: Sendable {
  
  public var visibleDateRange: ClosedRange<Date> {
    return startDate...endDate
  }
  
  public let calendar: Calendar
  public let startDate: Date
  public let endDate: Date
  public let monthFormatter: DateFormatter
  
  public init(
    calendar: Calendar,
    startDate: Date,
    endDate: Date,
    monthFormatter: DateFormatter
  ) {
    self.calendar = calendar
    self.startDate = startDate
    self.endDate = endDate
    self.monthFormatter = monthFormatter
  }
}

public extension CalendarConfiguration {
  
  static let `default`: CalendarConfiguration = {
    let calendar = Calendar.current
    let now = Date.now
    let startDate = calendar.date(byAdding: .year, value: -1, to: now)?.startOfMonth() ?? now
    let endDate = calendar.date(byAdding: .year, value: 1, to: now)?.startOfMonth() ?? now
    return .init(
      calendar: calendar,
      startDate: startDate,
      endDate: endDate,
      monthFormatter: monthFormatter
    )
  }()
  
  private static let monthFormatter: DateFormatter = {
    let calendar = Calendar.current
    var formatter = DateFormatter()
    formatter.calendar = calendar
    formatter.locale = calendar.locale
    formatter.dateFormat = "M월 yyyy"
    return formatter
  }()
}
