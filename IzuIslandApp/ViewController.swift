//
//  ViewController.swift
//  IzuIslandApp
//
//  Created by 飯沼圭哉 on 2020/08/03.
//  Copyright © 2020 keisuke.iinuma. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController , CLLocationManagerDelegate {
    
    @IBOutlet weak var MapView: MKMapView!
    
    var locationManager: CLLocationManager!
    //var locationManager: CLLocationManager = CLLocationManager()
    //var testManager:CLLocationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //let filter = MKPointOfInterestFilter.excludingAll
        //MapView.pointOfInterestFilter = filter
        
        //デリゲート先を自分に設定する。
        locationManager.delegate = self
        
        //位置情報の利用許可を変更する画面をポップアップ表示する。
        locationManager.requestWhenInUseAuthorization()
        
        //位置情報の取得を要求する。
        locationManager.requestLocation()
        
        //let center = CLLocationCoordinate2DMake(34.751935,139.352506)

        //let span = MKCoordinateSpan(latitudeDelta: 0.010 , longitudeDelta: 0.010)
        
        //let region = MKCoordinateRegion(center: center , span: span)
        //MapView.setRegion(region, animated:true)
        
        //本町漁船待合所
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2DMake(34.751935,139.352506)
        annotation.subtitle = "本町漁船待合所"
        MapView.addAnnotation(annotation)
        
        //グルメ
        //寿し光
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2DMake(34.750868,139.353768)
        annotation2.subtitle = "寿し光"
        MapView.addAnnotation(annotation2)
        
        //かあちゃん
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2DMake(34.752856,139.352768)
        annotation3.subtitle = "かあちゃん"
        MapView.addAnnotation(annotation3)
        
        //おともだち
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2DMake(34.752314,139.353018)
        annotation4.subtitle = "おともだち"
        MapView.addAnnotation(annotation4)
        
        //カメレオンカフェ
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2DMake(34.752038,139.353067)
        annotation5.subtitle = "カメレオンカフェ"
        MapView.addAnnotation(annotation5)
        
        //びすとろ　う・と
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2DMake(34.751576,139.35334)
        annotation6.subtitle = "びすとろ　う・と"
        MapView.addAnnotation(annotation6)
        
        //栄楽
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2DMake(34.75018,139.3545)
        annotation7.subtitle = "栄楽"
        MapView.addAnnotation(annotation7)
        
        //どさん娘
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = CLLocationCoordinate2DMake(34.75282,139.356157)
        annotation8.subtitle = "どさん娘"
        MapView.addAnnotation(annotation8)
        
        //丸九食堂
        let annotation9 = MKPointAnnotation()
        annotation9.coordinate = CLLocationCoordinate2DMake(34.74893,139.35521)
        annotation9.subtitle = "丸九食堂"
        MapView.addAnnotation(annotation9)
        
        //もとまちや
        let annotation10 = MKPointAnnotation()
        annotation10.coordinate = CLLocationCoordinate2DMake(34.748815,139.355272)
        annotation10.subtitle = "もとまちや"
        MapView.addAnnotation(annotation10)
        
        //駅
        let annotation11 = MKPointAnnotation()
        annotation11.coordinate = CLLocationCoordinate2DMake(34.749868,139.353831)
        annotation11.subtitle = "駅"
        MapView.addAnnotation(annotation11)
        
        //豊田屋
        let annotation12 = MKPointAnnotation()
        annotation12.coordinate = CLLocationCoordinate2DMake(34.75193,139.353219)
        annotation12.subtitle = "豊田屋"
        MapView.addAnnotation(annotation12)
        
    }
    
    //位置情報取得時の呼び出しメソッド
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
        
        for location in locations {
            //現在位置をマップの中心にして登録する。
            let center = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            let region = MKCoordinateRegion(center: center , span: span)
            MapView.setRegion(region, animated:true)
        }
    }
    
    //位置情報取得失敗時の呼び出しメソッド
    private func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print(error)
    }
    
}



