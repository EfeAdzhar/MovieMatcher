//
//  DescriptionViewController.swift
//  FilmMatcher
//
//  Created by Efe on 13.10.2023.
//

import UIKit

class DescriptionViewController: UIViewController {
    @IBOutlet weak var summaryLable: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    weak var viewModel : DescriptionViewModelType? {
        willSet(viewModel) {
            self.summaryLable.text = viewModel?.summaryText
            self.dayLabel.text = viewModel?.dayText
            self.directorLabel.text = viewModel?.directorsText
            self.monthLabel.text = viewModel?.monthText
            self.yearLabel.text = viewModel?.yearText
            self.hoursLabel.text = viewModel?.hoursText
            self.minutesLabel.text = viewModel?.minutesText
        }
    }
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
