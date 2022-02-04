//
//  ViewController.swift
//  codepath prewaork
//
//  Created by Kennedy Emeruem on 2/3/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set up the gesture recognizer
        let TapGesture = UITapGestureRecognizer()
        self.view.addGestureRecognizer(TapGesture)
        TapGesture.addTarget(self, action: #selector(tapclick))
    }
   
    var defaultText : String = "Swift is interesting"
    
    @IBOutlet weak var textString: UILabel!
    @IBOutlet weak var textFeild: UITextField!
    
    //return keyboard when return is clicked ad end editing
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    //change text string
    @IBAction func sayHello(_ sender: Any) {
        textString.text = "Hello 👋🏾"
    }
    //change bg color on click
    @IBAction func bgColorChanger(_ sender: Any) {
        self.view.backgroundColor = UIColor.black
    }
    
    //change text color to red
    @IBAction func changeTextColor(_ sender: Any) {
        textString.textColor = UIColor.red
    }
    
    //change the text strng based on input
    @IBAction func changeTextString(_ sender: Any) {
        if textFeild.text == "" {
            textString.text = defaultText
        } else{
            textString.text = textFeild.text
        }
        
    }
    //reset function
    @objc func tapclick() {
        self.view.backgroundColor = UIColor.white
        textString.text = defaultText
        textString.textColor = UIColor.white
        textFeild.text = ""
    }
    
}

