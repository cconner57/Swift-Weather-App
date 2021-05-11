import Foundation
import CoreLocation

class ContentModel:NSObject, CLLocationManagerDelegate, ObservableObject {
	
	var locationManager = CLLocationManager()
	
	@Published var weatherSpecs = City()
	
	override init() {
		super.init()
		
		locationManager.delegate = self
		locationManager.requestWhenInUseAuthorization()
	}
	
	func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
		if locationManager.authorizationStatus == .authorizedAlways || locationManager.authorizationStatus == .authorizedWhenInUse {
			locationManager.startUpdatingLocation()
		}
		else if locationManager.authorizationStatus == .denied {
			
		}
	}
	
	func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
		let userLocation = locations.first
		if userLocation != nil {
			locationManager.stopUpdatingLocation()
			getWeather(location: userLocation!)
		}
	}
	
	func getWeather(location: CLLocation) {
		let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(location.coordinate.latitude)&lon=\(location.coordinate.longitude)&appid=98c299e399577c8ad6780b4834d1ed8a")
		if let url = url {
			var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10.0)
			request.httpMethod = "GET"
			let session = URLSession.shared
			let dataTask = session.dataTask(with: request) { (data, response, error) in
				if error == nil {
					do {
						let decoder = JSONDecoder()
						let result = try decoder.decode(WeatherSearch.self, from: data!)
						print(result)
//						DispatchQueue.main.async {
//							self.weatherSpecs = result.name
//						}
					}
					catch {
						print(error)
					}
				}
			}
			dataTask.resume()
		}
	}
}
