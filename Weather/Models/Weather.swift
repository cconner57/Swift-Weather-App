import Foundation

struct WeatherData: Decodable {
	var current: Current
	
}

struct Current: Decodable {
	var sunrise: Int
	var sunset: Int
	var temp: Double
	var pressure: Int
	var humidity: Int
	var uvi: Double
	var clouds: Int
	var visibility: Int
	var wind_speed: Int
	var weather: [Weather]
}

struct Weather: Decodable {
	var id: Int
	var main: String
	var description: String
}

struct TestItem {
	var id: Int
	var image: String
	var city: String
	var temp: String
}
