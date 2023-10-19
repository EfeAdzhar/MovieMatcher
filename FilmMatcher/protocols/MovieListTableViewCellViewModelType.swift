//
//  MovieListTableViewCellViewModelType.swift
//  FilmMatcher
//
//  Created by Efe on 15.10.2023.
//

import Foundation
import UIKit

protocol MovieListTableViewCellViewModelType : AnyObject {
    var movieNameLabelText: String { get  }
    var ratingLabelText : String { get }
    var genrasLabelText: String { get }
    var imageViewImage: String { get }
}
