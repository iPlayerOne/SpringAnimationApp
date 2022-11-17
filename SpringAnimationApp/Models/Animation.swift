//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by ikorobov on 17.11.2022.
//

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        title: \(name)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            name: DataStore.shared.animationPreset.randomElement()?.rawValue ?? "fadeOut",
            curve: DataStore.shared.animationCurve.randomElement()?.rawValue ?? "easeOut",
            force: Double.random(in: 0.7...1.7),
            duration: Double.random(in: 0.8...1.5),
            delay: Double.random(in: 0.1...0.4)
        )
    }
}
