//
//  DescriptionViewController.swift
//  FilmMatcher
//
//  Created by Efe on 13.10.2023.
//

import UIKit

class DescriptionViewController: UIViewController {
    @IBOutlet var summaryLable: UILabel!
    @IBOutlet var directorLabel: UILabel!
    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var monthLabel: UILabel!
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var hoursLabel: UILabel!
    @IBOutlet var minutesLabel: UILabel!
    
    var viewModel : DescriptionViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let viewModel = viewModel else {return}
        viewModel.summaryText.bind { [unowned self] text in
            self.summaryLable.text = text
        }
        
        viewModel.directorsText.bind { [unowned self] text in
            self.directorLabel.text = text
        }
        
        viewModel.dayText.bind { [unowned self] text in
            self.dayLabel.text = text
        }
        
        viewModel.monthText.bind { [unowned self] text in
            self.monthLabel.text = text
        }
        
        viewModel.yearText.bind { [unowned self] text in
            self.yearLabel.text = text
        }
        
        viewModel.hoursText.bind { [unowned self] text in
            self.hoursLabel.text = text
        }
        
        viewModel.minutesText.bind { [unowned self] text in
            self.minutesLabel.text = text
        }
    }
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
