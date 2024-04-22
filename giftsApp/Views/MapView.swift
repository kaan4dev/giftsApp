import SwiftUI
import MapKit

struct MapView: View 
{
    var body: some View 
    {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion
    {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 36.8841, longitude: 30.7056),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
    }
}

#Preview 
{
    MapView()
}
