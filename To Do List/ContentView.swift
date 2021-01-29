//
//  ContentView.swift
//  To Do List
//
//  Created by Student on 1/28/21.
//  Copyright © 2021 elenator. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var things = ["First Thing", "Second Thing", "Third Thing", "Fourth Thing", "Fifth Thing"]

var body: some View {

    NavigationView {
            List {
                ForEach(things, id: \.self) { thing in
                    Text(thing)
                }
                .onMove(perform: { indices, newOffset in

                    self.things.move(fromOffsets: indices, toOffset: newOffset)
                }
                )

                .onDelete(perform: { indexSet in

                    self.things.remove(atOffsets: indexSet)}
                )
            }
            .navigationBarTitle("Things")
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
