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
    @IBOutlet var descriptionLabel: UILabel!
    
    private let setAnimation = DataStore()
    private var name: String?
    private var curve: String?
    private var force: Double?
    private var duration: Double?
    private var delay: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAnimation()
        setLabel()
    }
    
    
    @IBAction func nextToButton(_ sender: SpringButton) {
        setLabel()
        springAnimationView.animation = name ?? "fadeOut"
        springAnimationView.curve = curve ?? "easeOut"
        springAnimationView.force = force ?? 0.1
        springAnimationView.duration = duration ?? 0.1
        springAnimationView.delay = delay ?? 0.1
        springAnimationView.animate()
        
        getAnimation()
        sender.setTitle("Run \(name ?? "away")", for: .normal)
        
    }
    
    private func getAnimation() {
        name = setAnimation.animationPreset.randomElement()?.rawValue
        curve = setAnimation.animationCurve.randomElement()?.rawValue
        force = Double.random(in: 0.7...1.7)
        duration = Double.random(in: 0.8...1.5)
        delay = Double.random(in: 0.1...0.4)
    }
    
    private func setLabel() {
        descriptionLabel.text = """
title: \(name ?? "fadeOut")
curve: \(curve ?? "easeOut")
force: \(String(format: "%.2f", force ?? 0.1))
duration: \(String(format: "%.2f", duration ?? 0.1))
delay: \(String(format: "%.2f", delay ?? 0.1))
"""
    }
    
}


