//
//  DescriptionViewModel.swift
//  FilmMatcher
//
//  Created by Efe on 15.10.2023.
//

import Foundation

class DescriptionViewModel : DescriptionViewModelType {
    private var description : Description
    
    init(_ desctription : Description) {
        self.description = desctription
    }
    
    var summaryText: String {
        return description.summary
    }
    
    var directorsText: String {
        return description.director
    }
    
    var dayText: String {
        return String(describing: description.releaseDate.day)
    }
    
    var monthText: String {
        return String(describing: description.releaseDate.month)
    }
    
    var yearText: String {
        return String(describing: description.releaseDate.year)
    }
    
    var hoursText: String {
        return String(describing: description.duration.hours)
    }
    
    var minutesText: String {
        return String(describing: description.duration.minutes)
    }
}
