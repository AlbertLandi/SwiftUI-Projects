//
//  Tutorial5.swift
//  InstafilterTutorials
//
//  Created by Alberto Landi Cortiñas on 3/18/22.
//

import SwiftUI

struct Tutorial5: View {
    @State private var image: Image?
    @State private var inputImage: UIImage?
    @State private var showingImagePicker = false
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image") {
                showingImagePicker = true
            }
            
            Button("Save Image") {
                guard let inputImage = inputImage else { return }
                
                let imageSaver = ImageSaver()
                imageSaver.writeToPhotoAlbum(image: inputImage)
            }
        }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker(image: $inputImage)
        }
        .onChange(of: inputImage) { _ in loadImage() }
        .navigationBarTitle("Tutorial 5, 6 and 7", displayMode: .inline)
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
        
        UIImageWriteToSavedPhotosAlbum(inputImage, nil, nil, nil)
    }
}

struct Tutorial5_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial5()
    }
}
