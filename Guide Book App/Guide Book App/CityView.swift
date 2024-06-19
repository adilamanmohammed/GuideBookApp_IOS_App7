//
//  ContentView.swift
//  Guide Book App
//
//  Created by Adil Aman Mohammed on 6/16/24.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        ScrollView{
            
            VStack {
                ForEach(cities) { city in
                    /*@START_MENU_TOKEN@*/Text(city.name)/*@END_MENU_TOKEN@*/
                }
            }
            .padding()
            .onAppear{
                cities = dataService.getData()
            }

        }
    }
}

#Preview {
    CityView()
}
