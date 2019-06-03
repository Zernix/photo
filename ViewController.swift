//
//  ViewController.swift
//  InstaGrid
//
//  Created by Massinissa_theking on 27/05/2019.
//  Copyright © 2019 Massinissa_theking. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    let imagePick = UIImagePickerController()
    
        
   
    override func viewDidLoad() {
        
    }
   
   

    @IBAction func addImageButton(_ sender: Any) {
    
    
            let image = UIImagePickerController()
            image.delegate = self
            image.sourceType = UIImagePickerController.SourceType.photoLibrary
            image.allowsEditing = true
            self.present(image, animated: true, completion: nil)
            
        
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        imgView.image = image
        self.dismiss(animated: true, completion: nil)
    }
        
    
}

 

    
    
    



