//
//  Tutorial4.swift
//  HotProspectTutorials
//
//  Created by Alberto Landi Cortiñas on 7/7/22.
//

import SwiftUI

struct Tutorial4: View {
    @State private var output = ""
    
    
    var body: some View {
        VStack {
            Text(output)
                .task {
                    await fetchReadings()
                }
        }
        .navigationBarTitle("Tutorial 4")
    }
    
    func fetchReadings() async {
        let fetchTask = Task { () -> String in
            let url = URL(string:"https://hws.dev/readings.json")!
            let (data, _) = try await URLSession.shared.data(from: url)
            let readings = try JSONDecoder().decode([Double].self, from: data)
            return "Found \(readings.count) readings"
        }
        
        let result = await fetchTask.result
        
        switch result {
        case .success(let str):
            output = str
        case .failure(let error):
            output = "Download error: \(error.localizedDescription)"
        }
    }
}

struct Tutorial4_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial4()
    }
}
