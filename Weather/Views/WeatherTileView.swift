//
//  WeatherTile.swift
//  Weather
//
//  Created by Chris Conner on 5/11/21.
//

import SwiftUI

struct WeatherTileView: View {
	
	var image: String
	var city: String
	var temp: String
	
    var body: some View {
		HStack {
			Image(systemName: "\(image)")
				.foregroundColor(Color(.systemYellow))
				.font(.system(size: 60))
			VStack {
				Text("\(city)")
				Text("\(temp)")
			}
			.foregroundColor(.white)
		}
		.frame(width: 180, height: 100)
		.background(Color.blue)
		.cornerRadius(15.0)
    }
}
