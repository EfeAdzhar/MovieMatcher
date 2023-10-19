//
//  DescriptionViewModel.swift
//  FilmMatcher
//
//  Created by Efe on 15.10.2023.
//

import Foundation

class DescriptionViewModel : DescriptionViewModelType {
    private var description : Description
    
    var summaryText: Box<String?> = Box(nil)
    var directorsText: Box<String?> = Box(nil)
    var dayText: Box<String?> = Box(nil)
    var monthText: Box<String?> = Box(nil)
    var yearText: Box<String?> = Box(nil)
    var hoursText: Box<String?> = Box(nil)
    var minutesText: Box<String?> = Box(nil)
    
    init(_ description : Description) {
        self.description = description
        self.summaryText.value = description.summary
        self.directorsText.value = description.director
        self.dayText.value = String(description.releaseDate.day)
        self.monthText.value = String(description.releaseDate.month)
        self.yearText.value = String(description.releaseDate.year)
        self.hoursText.value = String(description.duration.hours)
        self.minutesText.value = String(description.duration.minutes)
    }
}
