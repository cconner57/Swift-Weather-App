//
//  WeatherListView.swift
//  Weather
//
//  Created by Chris Conner on 5/11/21.
//

import SwiftUI

struct WeatherListView: View {
	
	private var columns = [GridItem(.flexible(), spacing: 20),
						   GridItem(.flexible(), spacing: 20)]
	
	let testData: [TestItem] = [TestItem(id: 1, image: "sun.max", city: "Pasadena", temp: "72"),
								TestItem(id: 2, image: "sun.max", city: "Arcadia", temp: "78"),
								TestItem(id: 3, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 4, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 5, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 6, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 7, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 8, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 9, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 10, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id:11, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 12, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 13, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 14, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 15, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 16, image: "sun.max", city: "Azusa", temp: "76"),
								TestItem(id: 17, image: "sun.max", city: "Azusa", temp: "76"),]
	
	
	
	var body: some View {
		
		ZStack {
			ScrollView(.vertical, showsIndicators: false) {
				LazyVGrid(columns: columns, spacing: 10) {
					ForEach(testData, id: \.id) { category in
						WeatherTileView(image: category.image, city: category.city, temp: category.temp)
					}
				}.padding(.horizontal)
			}
			Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
				Image(systemName: "plus")
					.font(.system(size: 30))
					.frame(width: 60, height: 60)
					.foregroundColor(.white)
				
			})
			.background(Color.blue)
			.clipShape(Capsule())
			.frame(width: 75, height: 75)
			.position(x: 320.0, y: 720.0)
			.shadow(color: .black, radius: 10)
		}
		
	}
}

struct WeatherListView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherListView()
    }
}
