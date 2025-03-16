//
//  HomeViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class HomeViewController: UITableViewController {
    
    @IBOutlet var menuTableView: UITableView!
    
    //Data Sorce
    let menuOptions : [MenuOption] = [
                MenuOption(
                    title:"menu.option.videogames",
                    image:"gamecontroller.fill",
                    segue:"gamesSegue")
                , MenuOption(
                    title:"menu.option.weapons",
                    image:"shield.fill",
                    segue:"weaponsSegue")
                , MenuOption(
                    title:"menu.option.characters",
                    image:"person.crop.rectangle.stack.fill",
                    segue:"charactersSegue")
                ,MenuOption(
                    title:"menu.option.merchandise",
                    image:"shippingbox.fill",
                    segue:"merchandiseSegue")
            ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named:Constants.backgroundAppColor)
        
        UILabel.appearance().textColor = UIColor(named: "GOWText")



    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Configure the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuOptionCell
                // Configure the cell...
        let menuOption = menuOptions[indexPath.row]
        cell.menuLabel.text = NSLocalizedString(menuOption.title, comment: "")
        cell.menuImage.image = UIImage(systemName:menuOption.image)
        cell.backgroundColor = UIColor(named:Constants.backgroundAppColor)
        cell.tintColor = UIColor(named: "GOWRed")

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: self)
    }
    

}
