//
//  MovieListTableViewCellViewModelType.swift
//  FilmMatcher
//
//  Created by Efe on 15.10.2023.
//

import Foundation

protocol MovieListTableViewCellViewModelType : AnyObject {
    var movieNameLabelText: String { get  }
    var ratingLabelText : String { get }
    var genrasLabelText: String { get }
}
