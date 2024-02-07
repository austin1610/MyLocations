//
//  Functions.swift
//  MyLocations
//
//  Created by Austin Sparks on 2/7/24.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(
        deadline: .now() + seconds,
        execute: run)
}
