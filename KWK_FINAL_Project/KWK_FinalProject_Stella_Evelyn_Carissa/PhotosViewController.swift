//
//  PhotosViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var latestLabel: UILabel!
    
    @IBOutlet weak var newImage1: UIImageView!
    
    @IBOutlet weak var newImage2: UIImageView!
    
    @IBOutlet weak var newImage3: UIImageView!
    
    @IBOutlet weak var selfieButton1: UIButton!
    
    @IBOutlet weak var selfieButton2: UIButton!
    
    @IBOutlet weak var selfieButton3: UIButton!
    
    @IBOutlet weak var libraryButton1: UIButton!
    
    @IBOutlet weak var libraryButton2: UIButton!
    
    @IBOutlet weak var libraryButton3: UIButton!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        latestLabel.isHidden = true
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            displayImage.image = selectedImage
            if newImage1.image == nil {
                newImage1.image = selectedImage
            }
            else if newImage2.image == nil {
                newImage2.image = selectedImage
            }
            else if newImage3.image == nil {
                newImage3.image = selectedImage
            }
        }
        // update our photo with the selected photo
        dismiss(animated: true, completion: nil)
        // go back to our ViewController so the user can see the update
        latestLabel.isHidden = false
    }
    
    @IBAction func photoLibraryTapped1(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        
        imagePicker.allowsEditing = true
        
        present(imagePicker, animated:true, completion: nil)
        
        libraryButton1.isHidden = true
        
        selfieButton1.isHidden = true
        
        libraryButton2.isHidden = false
        
        selfieButton2.isHidden = false
    }
    
    @IBAction func photoLibraryTapped2(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        
        imagePicker.allowsEditing = true
        
        present(imagePicker, animated:true, completion: nil)
        
        libraryButton2.isHidden = true
        
        selfieButton2.isHidden = true
        
        libraryButton3.isHidden = false
        
        selfieButton3.isHidden = false
    }
    
    @IBAction func photoLibraryTapped3(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        
        imagePicker.allowsEditing = true
        
        present(imagePicker, animated:true, completion: nil)
        
        libraryButton3.isHidden = true
        
        selfieButton3.isHidden = true
    }
    
    @IBAction func takeSelfieTapped1(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func takeSelfieTapped2(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func takeSelfieTapped3(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
}
