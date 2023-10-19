//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Cristina on 2023-10-19.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statment to check if the button is pressed with Nil Coalescing
                // Condition ? A(true) : B(false)
                configuration.isPressed ?
                // A: When User presses the Button
                LinearGradient(
                    colors:
                        [.customGrayMedium, .customGrayLight], startPoint: .top,
                            endPoint: .bottom)
                :
                // B: When Button is not pressed
                LinearGradient(
                    colors:
                        [.customGrayLight, .customGrayMedium], startPoint: .top,
                            endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
