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
            viewModel?.movieNameLabelText.bind { [unowned self] text in
                self.movieNameLabel.text = text
            }
            viewModel?.ratingLabelText.bind { [unowned self] text in
                self.ratingLabel.text = text
            }
            viewModel?.genrasLabelText.bind { [unowned self] text in
                self.genrasLabel.text = text
            }
            viewModel?.imageViewImage.bind { [unowned self] text in
                self.movieImage?.image = UIImage(named: text!)
            }
        }
    }
}
