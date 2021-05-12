//
//  DayItem.swift
//  Weather
//
//  Created by Chris Conner on 5/6/21.
//

import SwiftUI

struct DayItem: View {
	
	var date: String
	var tempHigh: String
	var tempLow: String
	
    var body: some View {
		HStack {
			Text(date)
				.bold()
			Spacer()
			Image(systemName: "sun.min.fill")
				.foregroundColor(Color(.systemYellow))
				.font(.system(size: 30))
			Text("\(tempHigh)°")
				.bold()
				.padding(.horizontal, 15)
			Text("\(tempLow)°")
				.font(.title3)
		}
    }
}
