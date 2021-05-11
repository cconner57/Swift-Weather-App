import Foundation

struct WeatherData: Decodable {
	var weather: [Weather]
	var main: Main
	var visibility: Int
	var wind: Wind
	var sys: Country
	var name: String
}

struct Weather: Decodable {
	var ida: Int
	var main: String
	var description: String
}

struct Main: Decodable {
	var temp: Double
	var temp_min: Double
	var temp_max: Double
	var pressure: Int
	var humidity: Int
}

struct Wind: Decodable {
	var speed: Double
}

struct Country: Decodable {
	var country: String
	var sunrise: Int
	var sunset: Int
}
