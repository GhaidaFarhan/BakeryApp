//
//  imagePicker.swift
//  Mybakery
//
//  Created by Ghaida Farhan on 11/26/23.
//

import SwiftUI
import UIKit
struct ImagePicker: UIViewControllerRepresentable {
   
    //When the user picks an image using the UIImagePickerController, this property is updated with the selected image.
    @Binding var selectedImage: UIImage?
    @Binding var isPickerShowing : Bool
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let imagePicker = UIImagePickerController()
        // sets the user's source type to the photo library
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = context.coordinator
        
        
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
}

class Coordinator: NSObject, UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    
    // I call this parent because in the programming context the var parent refrence to owning an element
    var parent : ImagePicker
    
    init(_ picker: ImagePicker){
        self.parent = picker
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: 
       // the InfoKey is to the media that the user selected.
    [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
           
            DispatchQueue.main.async {
            self.parent.selectedImage = image
            }
         }
        parent.isPickerShowing = false
      }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        
        parent.isPickerShowing = false
    }
}



