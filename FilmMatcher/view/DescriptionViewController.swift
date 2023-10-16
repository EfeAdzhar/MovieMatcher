//
//  DescriptionViewController.swift
//  FilmMatcher
//
//  Created by Efe on 13.10.2023.
//

import UIKit

class DescriptionViewController: UIViewController {
    @IBOutlet  var summaryLable: UILabel!
    @IBOutlet  var directorLabel: UILabel!
    @IBOutlet  var dayLabel: UILabel!
    @IBOutlet  var monthLabel: UILabel!
    @IBOutlet  var yearLabel: UILabel!
    @IBOutlet  var hoursLabel: UILabel!
    @IBOutlet  var minutesLabel: UILabel!
    weak var viewModel : DescriptionViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setValues()
    }
    
    private func setValues() {
            self.summaryLable.text = viewModel?.summaryText
            self.dayLabel.text = viewModel?.dayText
            self.directorLabel.text = viewModel?.directorsText
            self.monthLabel.text = viewModel?.monthText
            self.yearLabel.text = viewModel?.yearText
            self.hoursLabel.text = viewModel?.hoursText
            self.minutesLabel.text = viewModel?.minutesText
        }
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
