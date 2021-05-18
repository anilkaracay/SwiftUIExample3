//
//  GeReaderEx2.swift
//  ThirdExample
//
//  Created by Macbook Air on 3.05.2021.
//

import SwiftUI

struct GeReaderEx2: View {
    var body: some View {
        VStack(spacing:20){
            Text("Geo Reader Örnek 2").font(.largeTitle)
            Text("View Konumlandırma").foregroundColor(.gray)
            Text("Geo readerın değişkenlerini kullanarak barındırdığı viewleri merkezinden başka yerlere de ekleyebiliriz ve konumlandırabiliriz.").layoutPriority(1).padding()
            GeometryReader{ geometry in
                Text("Sol üst").position(x:geometry.size.width/5,y:geometry.size.height/10)
                Text("Sağ alt").position(x:geometry.size.width-90,y:geometry.size.height-40)
                
            }.background(Color.pink).foregroundColor(.white)
        }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

struct GeReaderEx2_Previews: PreviewProvider {
    static var previews: some View {
        GeReaderEx2()
    }
}
