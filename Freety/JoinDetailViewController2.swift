//
//  JoinDetailViewController.swift
//  Freety
//
//  Created by jigunho on 2017. 6. 26..
//  Copyright © 2017년 Sopt20th. All rights reserved.
//

import Foundation
import UIKit
import Material
class JoinDetailViewController2 : UIViewController,SSRadioButtonControllerDelegate , UITextFieldDelegate {
    
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var pswTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!

    var radioButtonController: SSRadioButtonsController?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
        pswTextField.delegate = self
        nameTextField.delegate = self
        ageTextField.delegate = self
        
        radioButtonController = SSRadioButtonsController(buttons: button1, button2, button3,button4,button5)
        radioButtonController!.delegate = self
        radioButtonController!.shouldLetDeSelect = true
        
    }
    func didSelectButton(selectedButton: UIButton?) {}

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
   }
