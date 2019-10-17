
import UIKit
import MapKit

class ViewController: UIViewController , MKMapViewDelegate, CLLocationManagerDelegate{
    
    
    @IBOutlet weak var mapa: MKMapView!
    var gerenciasdorLocal = CLLocationManager()     //SOLICITAR USUARIO
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gerenciasdorLocal.delegate = self
        gerenciasdorLocal.desiredAccuracy = kCLLocationAccuracyBest //PRECISAO DA LOCALIZACAO
        gerenciasdorLocal.requestWhenInUseAuthorization()       //PEDINDO AUTORIZACAO AO USUARIO
        gerenciasdorLocal.startUpdatingLocation()
        
        
        //CONFIGURACAO ESTATICA
        
//
        // let latitude: CLLocationDegrees = -23.539995
       // let longitude: CLLocationDegrees = -46.597079
        
        //let deltaLatitude: CLLocationDegrees = 0.008
        //let deltaLongitude: CLLocationDegrees = 0.008
        
        //let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        //let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude)
        
        //let regiao: MKCoordinateRegion = MKCoordinateRegion(center: localizacao, span: areaVisualizacao)

        //mapa.setRegion(regiao, animated: true)
        
        //CONFIGURACAO ANOTACAO
        //let anotacao = MKPointAnnotation()
        //anotacao.coordinate = localizacao
        //anotacao.title = "Home"
        //anotacao.subtitle = "sweet Home"
       // mapa.addAnnotation( anotacao)
        
        //PEDINDO PERMISSAO AO USUARIO
        
       
        
}
    // metodo para pegar localizacao real
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let localizacaoUsuario: CLLocation = locations.last! //ultima localizacao usuario
        
        // MONTA A EXIBICAO DO MAPA
        let latitude: CLLocationDegrees = localizacaoUsuario.coordinate.latitude
        let longitude: CLLocationDegrees = localizacaoUsuario.coordinate.longitude
        
        let deltaLatitude: CLLocationDegrees = 0.05
        let deltaLongitude: CLLocationDegrees = 0.05
        
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude , longitudeDelta: deltaLongitude)
        
        let regiao:MKCoordinateRegion = MKCoordinateRegion(center: localizacao, span: areaVisualizacao)
        
        mapa.setRegion(regiao, animated: true)
    }

}
