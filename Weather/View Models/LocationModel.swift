import Foundation
import CoreLocation

class ContentModel:NSObject, ObservableObject {

	@Published var weatherSpecs: WeatherData?
	
	func getWeather(location: CLLocation) {
		let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?units=imperial&q=pasadena,ca&appid=98c299e399577c8ad6780b4834d1ed8a")
		if let url = url {
			var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10.0)
			request.httpMethod = "GET"
			let session = URLSession.shared
			let dataTask = session.dataTask(with: request) { (data, response, error) in
				if error == nil {
					do {
						let decoder = JSONDecoder()
						let result = try decoder.decode(WeatherData.self, from: data!)
						print(result)
						DispatchQueue.main.async {
							self.weatherSpecs = result
						}
					}
					catch {
						print(error)
					}
				}
			}
			dataTask.resume()
		}
	}
	
	static func conditionIcon(weather: Int) -> String{
		switch weather {
		   case 200...232:
			   return "cloud.bolt"
		   case 300...321:
			   return "cloud.drizzle"
		   case 500...531:
			   return "cloud.rain"
		   case 600...622:
			   return "cloud.snow"
		   case 701...781:
			   return "cloud.fog"
		   case 800:
			   return "sun.max"
		   case 801...804:
			   return "cloud"
		   default:
			   return "cloud"
		   }
	   }
}
