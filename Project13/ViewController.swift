//
//  ViewController.swift
//  Project13
//
//  Created by Eddie Jung on 8/18/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var intensity: UISlider!
    var currentImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Instafilter"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(importPicture))
    }
    
    @objc func importPicture() {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }

    @IBAction func changeFilter(_ sender: Any) {
    }
    
    @IBAction func save(_ sender: Any) {
    }
    
    @IBAction func intensityChanged(_ sender: Any) {
    }
    
}

