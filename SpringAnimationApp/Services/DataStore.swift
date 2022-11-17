//
//  AnimationModel.swift
//  SpringAnimationApp
//
//  Created by ikorobov on 06.08.2022.
//

import SpringAnimation

struct DataStore {
    static let shared = DataStore()
    
    let animationPreset = AnimationPreset.allCases
    let animationCurve = AnimationCurve.allCases
    
    private init() {}
}
