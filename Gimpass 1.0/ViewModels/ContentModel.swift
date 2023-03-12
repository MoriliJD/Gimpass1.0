//
//  ContentView.swift
//  Gimpass 1.0
//
//  Created by MORI on 2023/3/12.
//

import Foundation

class ContentModel:ObservableObject {
    @Published var details = [Detail]()
    init() {
        getLocalData()
    }
    func getLocalData() {
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            let jsonDecoder = JSONDecoder()
            let details = try jsonDecoder.decode([Detail].self, from: jsonData)
            
            self.details = details
        }
        catch{
            print("Couldn't work")
        }

    }
}
