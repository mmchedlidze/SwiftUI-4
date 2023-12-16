//
//  AlerViewModel.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct TravelTips {
    static let tips = [
        "Pack a versatile wardrobe to accommodate different weather conditions.",
        "Always carry a copy of important documents, like your passport and travel insurance.",
        "Use a money belt or hidden pouch to keep your valuables secure.",
        "Learn a few basic phrases in the local language to make communication easier.",
        "Research and respect the local customs and traditions of the destination.",
        "Stay hydrated and carry a reusable water bottle.",
        "Use sunscreen to protect your skin, especially in sunny destinations.",
        "Keep a power bank for your electronic devices, and bring the appropriate adapters.",
        "Try local cuisine and street food for an authentic experience.",
        "Stay connected with family and friends but be mindful of your screen time.",
        "Take breaks and rest when needed, especially during long journeys.",
        "Explore off-the-beaten-path destinations for unique experiences.",
        "Keep an emergency contact card with important numbers and addresses.",
        "Be cautious of your surroundings and trust your instincts.",
        "Check the visa and vaccination requirements for your destination.",
        "Use public transportation to experience the local way of life.",
        "Plan some downtime in your itinerary for relaxation.",
        "Take photos but also put down your camera and enjoy the moment.",
        "Respect the environment by practicing responsible and sustainable tourism.",
        "Keep a travel journal to capture memories and reflections."
    ]
    
    static func getRandomTip() -> String {
        guard let randomTip = tips.randomElement() else {
            return "No tips available."
        }
        return randomTip
    }
}
