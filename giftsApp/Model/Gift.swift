import Foundation
import SwiftUI
import CoreLocation

struct Gift: Hashable, Codable {
    var id: Int
    var name: String
    var category: String
    var brand: String
    var description: String
    var size: Int // Size alanını ekledik
    var coordinates: Coordinates
    var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
