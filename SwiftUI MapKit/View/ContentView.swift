//
//  ContentView.swift
//  SwiftUI MapKit
//
//  Created by Dmitry Novosyolov on 03/08/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var selectedSegment = 0
    @State private var locations = LocationItem.all()
    @State private var tapped = false
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Picker(selection: $selectedSegment, label: Text("")) {
                        ForEach(0..<locations.count) {
                            Text(self.locations[$0].title).tag($0)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                ZStack {
                    MapView(coordinates: self.locations[selectedSegment].coordinates)
                    Image(locations[selectedSegment].imageURL)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 250)
                        .clipShape(RoundedRectangle(cornerRadius:tapped ? 255 : 15))
                        .shadow(color: .secondary, radius: 8)
                        .offset(x: tapped ? 750 : 0, y: 160)
                        .scaleEffect(tapped ? 0.3 : 1.0)
                        .onTapGesture { withAnimation(.spring()) { self.tapped.toggle()}}
                }
            }.navigationBarTitle("My❤️Israel🇮🇱locations")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.dark)
    }
}
#endif
