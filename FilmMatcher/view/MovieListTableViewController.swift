//
//  MoviesTableViewController.swift
//  FilmMatcher
//
//  Created by Efe on 12.10.2023.
//

import UIKit

/*
 @FIXES:
 - DescriptionViewController is invicible
 - DescriptionViewController throws errors when presenting from didSelectRowAt method
 */
class MovieListTableViewController: UITableViewController {
    
    private var viewModel : MovieListTableViewViewModelType?
    private var descriptionViewController : DescriptionViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = MovieListViewModel()
        self.descriptionViewController = DescriptionViewController()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MovieListTableViewCell
        
        guard let tableViewCell = cell, let viewModel = viewModel else {return UITableViewCell()}
         
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        tableViewCell.viewModel = cellViewModel
        return tableViewCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let descriptionViewController = UIStoryboard(name: "Description", bundle: .none).instantiateViewController(withIdentifier: "DescriptionViewController") as? DescriptionViewController
        
        guard let descriptionVC = descriptionViewController, let viewModel = viewModel else {return}
        
        let descriptionViewModel = viewModel.descriptionViewModel(forIndexPath: indexPath)
        descriptionVC.viewModel = descriptionViewModel
        present(descriptionVC, animated: true)
        }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}
