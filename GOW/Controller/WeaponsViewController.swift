//
//  WeaponsViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class WeaponsViewController: UIViewController {
    
    @IBOutlet weak var wTableView: UITableView!
    //Data Sorce
    var arrayWeapons : [Weapon] = []
    //    CGO Weapons
        let cgoWeapons : [Weapon] = [
            Weapon(
                id: 1, name: "weapon.name.lancer",
                description: "weapon.description.lancer",
                poster: "Mark1LancerAssaultRifle"
                ),
            Weapon(
                id: 2, name: "weapon.name.lancer2",
                description: "weapon.description.lancer2",
                poster: "LancerMk2"
                ),
            Weapon(
                id: 3, name: "weapon.name.sniper",
                description: "weapon.description.sniper",
                poster: "LongshotSniperRifle"

                ),
            Weapon(
                id: 4, name: "weapon.name.hammer_of_dawn",
                description: "weapon.description.hammer_of_dawn",
                poster: "HammerOfDawn"
                ),
            Weapon(
                id: 5, name: "weapon.name.mx8",
                description: "weapon.description.mx8",
                poster: "SnubPistol"
            )
            ]
        
    //    Locus Weapons
        let locusWeapons : [Weapon] = [
            Weapon(
            id: 1, name: "weapon.name.boomshot",
            description: "weapon.description.boomshot",
            poster: "Boomshot"
        ),
            Weapon(
                id: 2, name: "weapon.name.hammerburstii",
                description: "weapon.description.hammerburstii",
                poster: "HammerburstII"
            ),
        Weapon(
            id: 3, name: "weapon.name.mulcher",
            description: "weapon.description.mulcher",
            poster: "Mulcher"
        ),
        Weapon(
            id: 4, name: "weapon.name.bolo_grenade",
            description: "weapon.description.bolo_grenade",
            poster: "BoloGrenade"
        ),
        Weapon(
            id: 5, name: "weapon.name.boltok",
            description: "weapon.description.boltok",
            poster: "BoltokPistol"
        )
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named:Constants.backgroundAppColor)
        UILabel.appearance().textColor = UIColor(named: Constants.letterColor)
        wTableView.backgroundColor = UIColor(named: Constants.backgroundAppColor)
        
        
        // Do any additional setup after loading the view.
        wTableView.dataSource = self
        wTableView.delegate = self
        
        let tabItemTag = self.tabBarItem.tag
        if tabItemTag == Constants.tagCGO {
            arrayWeapons = cgoWeapons
        }
        else{
            arrayWeapons = locusWeapons
        }
        
        UITabBar.appearance().tintColor = UIColor.gowRed
        
        
    }
    
}



extension WeaponsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayWeapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WeaponsCell
        let weapon = arrayWeapons[indexPath.row]

        cell.wName.text = weapon.name.localized
        cell.wPoster.image = UIImage(named: weapon.poster)
        cell.wDescription.text = weapon.description.localized

        cell.backgroundColor = UIColor(named: Constants.backgroundAppColor)
        cell.contentView.backgroundColor = UIColor(named: Constants.backgroundAppColor)
        cell.contentView.subviews.forEach { subview in
            subview.backgroundColor = UIColor(named: Constants.backgroundAppColor)
        }

        return cell
    }

}

