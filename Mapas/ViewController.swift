
import UIKit
import MapKit

class ViewController: UIViewController , MKMapViewDelegate{
    
    
    @IBOutlet weak var mapa: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let latitude: CLLocationDegrees = -23.539995
//        let longitude: CLLocationDegrees = -46.597079
//
//        let deltaLatitude: CLLocationDegrees = 0.05
//        let deltaLongitude: CLLocationDegrees = 0.05
//
//        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
//        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude , longitudeDelta: deltaLongitude)
//
//        let regiao:MKCoordinateRegion = MKCoordinateRegion(center: localizacao, span: areaVisualizacao)
       
        //mapa.setRegion(regiao, animated: true)
        let latitude: CLLocationDegrees = -23.539995
        let longitude: CLLocationDegrees = -46.597079
        
        let deltaLatitude: CLLocationDegrees = 0.008
        let deltaLongitude: CLLocationDegrees = 0.008
        
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude)
        
        let regiao: MKCoordinateRegion = MKCoordinateRegion(center: localizacao, span: areaVisualizacao)

        mapa.setRegion(regiao, animated: true)
        
        //CONFIGURACAO ANOTACAO
        let anotacao = MKPointAnnotation()
        anotacao.coordinate = localizacao
        anotacao.title = "Home"
        anotacao.subtitle = "sweet Home"
        mapa.addAnnotation( anotacao)
       
        
}

}
