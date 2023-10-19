//
//  MovieListTableViewCellViewModelType.swift
//  FilmMatcher
//
//  Created by Efe on 15.10.2023.
//

import Foundation
import UIKit

protocol MovieListTableViewCellViewModelType : AnyObject {
    var movieNameLabelText: Box<String?> { get  }
    var ratingLabelText : Box<String?> { get }
    var genrasLabelText: Box<String?> { get }
    var imageViewImage: Box<String?> { get }
}
