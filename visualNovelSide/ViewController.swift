//
//  ViewController.swift
//  visualNovelSide
//
//  Created by Amanda Reyes on 9/27/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var storyField: UIView!
    @IBOutlet weak var nameField: UIView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starterName: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyField.isHidden = true
        nameField.isHidden = true
        name.delegate = self
        if nameLabel.text == "" {
        do { nameField.isHidden = true}
    }
        
    }
    
    @IBOutlet weak var backgroundPic: UIImageView!
    @IBAction func submitName(_ sender: Any) {
        let playerName = name.text
        starterName.isHidden = true
        nameField.isHidden = false
            storyField.isHidden = false
        nameLabel.text = playerName
        storyLabel.text = ""
        backgroundPic.image = UIImage (named: "JPStore")
        }
        
    @IBAction func whenNameTapped(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func whenBackgroundTapped(_ sender: Any) {
        
        
}
}
