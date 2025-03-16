//
//  GamesViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class GamesViewController: UIViewController {
    @IBOutlet weak var gameImage: UIImageView!
    
    @IBOutlet weak var imagePageControl: UIPageControl!
    
    
    @IBAction func rightSwipeGest(_ sender: Any) {
        print("Right Swipe")
        
        if imagePageControl.currentPage == 0{
            imagePageControl.currentPage = 7
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }
        else{
            imagePageControl.currentPage -= 1
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }
    }
    
    @IBAction func leftSwipeGest(_ sender: Any) {
        print("Left Swipe")
        
        if imagePageControl.currentPage == 7{
            imagePageControl.currentPage = 0
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }
        else{
            imagePageControl.currentPage += 1
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }
    }
    
    //datasource :P
    let gamePosters = Array(0...7)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named:Constants.backgroundAppColor)
        UILabel.appearance().textColor = UIColor(named: Constants.letterColor)
        
        //Collors Page Controller
        imagePageControl.pageIndicatorTintColor = UIColor.gowText
        imagePageControl.currentPageIndicatorTintColor = UIColor.gowRed
        
        //Logo page controller
        if let gowImage = UIImage(named: "gow_logo"){
            imagePageControl.preferredIndicatorImage = gowImage
        }

        // Do any additional setup after loading the view.
        imagePageControl.numberOfPages = gamePosters.count
        gameImage.image = UIImage(named: gamePosters.first?.description ?? "0")
    }
    

}
