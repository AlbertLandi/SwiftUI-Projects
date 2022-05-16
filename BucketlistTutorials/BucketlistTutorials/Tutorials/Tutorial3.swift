//
//  Tutorial3.swift
//  BucketlistTutorials
//
//  Created by Alberto Landi Cortiñas on 5/15/22.
//

import SwiftUI

enum LoadingState {
    case loading, success, failed
}

struct LoadingView:View {
    var body: some View {
        Text("Loading...")
    }
}

struct SuccessView:View {
    var body: some View {
        Text("Success!")
    }
}

struct FailedView:View {
    var body: some View {
        Text("Failed.")
    }
}


struct Tutorial3: View {
    
    var loadingState = LoadingState.loading

    var body: some View {
        
        switch loadingState {
        case .loading:
            LoadingView()
        case .failed:
            FailedView()
        case .success:
            SuccessView()
        }
    }
}

struct Tutorial3_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial3()
    }
}
