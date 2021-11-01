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
        if nameLabel.text == "" {
        do { nameField.isHidden = true}
        }
        
    }

    
    
    @IBOutlet weak var backgroundPic: UIImageView!
    @IBAction func submitName(_ sender: Any) {
        let PN = name.text!
        let playerName = String(PN)
        starterName.isHidden = true
        nameField.isHidden = false
            storyField.isHidden = false
        backgroundPic.image = UIImage (named: "JPStore")
        nameLabel.text = playerName
        storyLabel.text = "My name is \(playerName)."

        
        }
        
    @IBAction func whenNameTapped(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func whenBackgroundTapped(_ sender: Any) {
        let PN = name.text!
        let playerName = String(PN)
        let text1 = "I’m 19 years old and frankly, pretty lonely at school. No close friends and I’m not in any clubs."
        let text2 = "The only thing interesting I’ve got going for me is working with money."
        storyLabel.text = "\(text1)"
        nameLabel.text = playerName
        if storyLabel.text == "\(text1)" {
            storyLabel.text = "\(text2)"
        }
        }
    
        }
        
    

