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
        nameLabel.text = ""
        storyLabel.text = ""
        storyField.isHidden = true
        nameField.isHidden = true
        name.delegate = self
        if nameLabel.text == "" {
        nameField.isHidden = true }
    }
    
    @IBOutlet weak var backgroundPic: UIImageView!
    @IBAction func submitName(_ sender: Any) {
    let playerName = name.text
        starterName.isHidden = true
        nameField.isHidden = false
        storyField.isHidden = false
    }
    @IBAction func whenNameTapped(_ sender: Any) {
        view.endEditing(true)
    }
    
}
