//
//  GeoReaderEx4.swift
//  ThirdExample
//
//  Created by Macbook Air on 3.05.2021.
//

import SwiftUI

struct GeoReaderEx4: View {
    var body: some View {
        VStack(spacing:10){
            Text("Geo Reader Örnek - 4").font(.largeTitle)
            Text("Koordinat bilgilerini alma").foregroundColor(.gray)
            Text("Geo View için koordinat bilgilerini almak biraz farklı oluyor. isterseniz bir örnek yapalım").layoutPriority(1).padding()
            GeometryReader{geometry in
                VStack(spacing:10){
                    Text("X: \(geometry.frame(in: .local).origin.x)").foregroundColor(.white)
                    Text("Y: \(geometry.frame(in: .local).origin.y)").foregroundColor(.white)
                }
                
            }.background(Color.pink)
            Text("Local koordinat uzayı daima 0 ve 0 sonuçlarını üretir.")
            Text("Bakmamız gereken değer global koordinat değerleri olmalı.").frame(maxWidth:.infinity)
            GeometryReader{geometry in
                VStack(spacing:10){
                    Text("X: \(geometry.frame(in: .global).origin.x)")
                    Text("Y: \(geometry.frame(in: .global).origin.y)")
                }
                
            }.background(Color.pink).padding()
        }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

struct GeoReaderEx4_Previews: PreviewProvider {
    static var previews: some View {
        GeoReaderEx4()
    }
}
