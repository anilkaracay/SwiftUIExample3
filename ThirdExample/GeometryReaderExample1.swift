//
//  GeometryReaderExample1.swift
//  ThirdExample
//
//  Created by Macbook Air on 3.05.2021.
//

import SwiftUI

struct GeometryReaderExample1: View {
    var body: some View {
        VStack(spacing:20){
            Text("Geometry Reader Örnek - 1").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            Text("Geometry Reader Push-OUT türünde bir container view Bu yüzden yerleştiği tüm boşluğu kampaya çalışır. Onu kullanarak barındırdığı viewleri konumlandırabiliriz.").padding().layoutPriority(1)
            GeometryReader{ _ in
                Text("Viewler Geometry Reader içinde merkeze konumlandırılır.")
            }.background(Color.red).foregroundColor(.white)
        }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

struct GeometryReaderExample1_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderExample1()
    }
}
