//
//  ViewController.swift
//  Barrel Jump1
//
//  Created by Adam Naumovski on 26/7/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerWalk1: UIImageView!
    
    var imageIndex = 0
    let images = ["player1", "player2"] // Add your image names here
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Start the timer to change the image every second
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
    }
    
    @objc func changeImage() {
        imageIndex = (imageIndex + 1) % images.count
        playerWalk1.image = UIImage(named: images[imageIndex])
    }
    
    deinit {
        // Invalidate the timer when the view controller is deallocated
        timer?.invalidate()
    }
}
