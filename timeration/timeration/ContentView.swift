//
//  ContentView.swift
//  timeration
//
//  Created by RomanDev on 26.09.2020.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var currentDate = Date()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Start a new task") {
                    print ("new task")
                }
                .frame(width: 140, height: 60)
                .background(Color.yellow)
                .cornerRadius(10)
            }
            .padding()
            HStack {
                Spacer()
                Button("Stop the task") {
                    print ("new task")
                }
                .frame(width: 140, height: 60)
                .background(Color.yellow)
                .cornerRadius(10)
            }
            .padding()
            Spacer()
            
            Text("\(self.currentDate)")
                .onReceive(timer, perform: { input in
                    self.currentDate = input
                })
            
            Spacer()
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
