//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by ikorobov on 06.08.2022.
//

import UIKit
import SpringAnimation

class SpringViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getAnimation()
    
    @IBAction func nextToButton(_ sender: SpringButton) {
        descriptionLabel.text = animation.description
        
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
        
    }
}


