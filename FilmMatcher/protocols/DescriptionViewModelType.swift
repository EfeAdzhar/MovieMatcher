//
//  DescriptionViewModelType.swift
//  FilmMatcher
//
//  Created by Efe on 15.10.2023.
//

import Foundation

protocol DescriptionViewModelType : AnyObject {
    var summaryText: Box<String?> {get}
    var directorsText: Box<String?> {get}
    var dayText: Box<String?> {get}
    var monthText: Box<String?> {get}
    var yearText: Box<String?> {get}
    var hoursText: Box<String?> {get}
    var minutesText: Box<String?> {get}
}
