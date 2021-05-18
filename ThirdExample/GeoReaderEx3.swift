//
//  GeoReaderEx3.swift
//  ThirdExample
//
//  Created by Macbook Air on 3.05.2021.
//

import SwiftUI

struct GeoReaderEx3: View {
    var body: some View {
        VStack(spacing:15){
            Text("Geometry Reader Örnek 3").font(.largeTitle)
            Text("Boyutları Öğrenme").foregroundColor(.gray)
            Text("Geo Reader kullanarak bir alanın genişliği veya yüksekliği elde edilebilir.").padding()
            GeometryReader{ geometry in
                VStack(spacing:10){
                    Text("Genişlik : \(geometry.size.width)")
                    Text("Yükseklik : \(geometry.size.height)")
                }.foregroundColor(.white)
                
            }.background(Color.pink)
            GeometryReader{ geometry in
                
                VStack(spacing:10){
                    Text("Genişlik : \(geometry.size.width)")
                    Text("Yükseklik : \(geometry.size.height)")
                }.foregroundColor(.white)
            }.background(Color.pink).padding(25)
            
        }.font(.title)
    }
}

struct GeoReaderEx3_Previews: PreviewProvider {
    static var previews: some View {
        GeoReaderEx3()
    }
}
