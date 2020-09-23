//
//  ContentView.swift
//  Dark Mode
//
//  Created by Mickael Mas on 23/09/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOn = false
    
    var body: some View {
        VStack {
            Image(systemName: isOn ? "lightbulb" : "lightbulb.slash.fill")
                
                .font(.system(size: 100))
            Text(isOn ? "Allumé" : "Éteint")
                .padding()
            
            Toggle(isOn: $isOn, label: {
                /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
            }).labelsHidden()
        }.preferredColorScheme(isOn ? .light : .dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
