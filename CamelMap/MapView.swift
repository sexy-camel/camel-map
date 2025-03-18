//
//  MapView.swift
//  CamelMap
//
//  Created by 박종혁 on 1/17/25.
//
import UIKit
import SwiftUI
import NMapsMap


struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        
        let publicLatLng = NMGLatLng(lat: 37.44442344550767, lng: 127.1440312335699)
        
        //let mapView = NMFMapView(frame: .zero)
        print("ui reloading")
        
        let naverMap = NMFNaverMapView(frame: .zero)
        naverMap.showCompass = true
        naverMap.showScaleBar = true
        naverMap.showLocationButton = true
        naverMap.showZoomControls = true
        
        let mapView = naverMap.mapView
        
        mapView.mapType = .basic
        mapView.latitude = publicLatLng.lat
        mapView.longitude = publicLatLng.lng
        mapView.touchDelegate = context.coordinator
        mapView.zoomLevel = 17
        //mapView.positionMode = .compass
        
        let marker = NMFMarker()
        marker.position = publicLatLng
        marker.mapView = mapView
        
        marker.touchHandler = { overlay in
            print(overlay.overlayID)
            return true
        }
        
        return naverMap
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, NMFMapViewTouchDelegate {
        var parent: MapView
        
        init(_ parent: MapView) {
            self.parent = parent
        }
        
        func mapView(_ mapView: NMFMapView, didTapMap latlng: NMGLatLng, point: CGPoint) {
            print("latlng: ", String(describing: latlng))
            print("point: ", String(describing: point))
        }
    }
}

#Preview {
    MapView()
        .ignoresSafeArea()
}
