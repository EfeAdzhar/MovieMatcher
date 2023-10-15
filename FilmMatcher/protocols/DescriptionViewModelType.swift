//
//  DescriptionViewModelType.swift
//  FilmMatcher
//
//  Created by Efe on 15.10.2023.
//

import Foundation

protocol DescriptionViewModelType : AnyObject {
    var summaryText : String { get }
    var directorsText : String { get }
    var dayText : String { get }
    var monthText : String { get }
    var yearText : String { get }
    var hoursText : String { get }
    var minutesText : String { get }
}
