//
//  MovieListTableViewCell.swift
//  FilmMatcher
//
//  Created by Efe on 13.10.2023.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {
    @IBOutlet  weak var movieNameLabel: UILabel!
    @IBOutlet  weak var ratingLabel: UILabel!
    @IBOutlet  weak var genrasLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
        
    weak var viewModel : MovieListTableViewCellViewModelType? {
        willSet(viewModel) {
            movieNameLabel.text = viewModel?.movieNameLabelText
            ratingLabel.text = viewModel?.ratingLabelText
            genrasLabel.text = viewModel?.genrasLabelText
            self.imageView?.image = UIImage(named: viewModel!.imageViewImage)
        }
    }
}
