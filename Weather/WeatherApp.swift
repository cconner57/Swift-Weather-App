//
//  WeatherApp.swift
//  Weather
//
//  Created by Chris Conner on 5/6/21.
//

import SwiftUI

@main
struct WeatherApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(ContentModel())
        }
    }
}
