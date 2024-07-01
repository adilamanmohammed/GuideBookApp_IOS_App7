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
        NavigationStack{
            
            ScrollView(showsIndicators: false){
                
                VStack {
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                        }
                        
                    }
                }
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea()
        .onAppear{
            cities = dataService.getFileData()
        }
        
    }
}

#Preview {
    CityView()
}
