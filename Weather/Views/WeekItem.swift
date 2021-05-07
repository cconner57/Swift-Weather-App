//
//  WeekItem.swift
//  Weather
//
//  Created by Chris Conner on 5/6/21.
//

import SwiftUI

struct WeekItem: View {
	
	var date: String
	var temp: String
	
    var body: some View {
		VStack {
			Text(date)
			Text("\(temp)°")
				.padding(.vertical, 1)
			Image(systemName: "sun.min.fill")
				.foregroundColor(Color(.systemYellow))
				.font(.system(size: 40))
		}
    }
}
