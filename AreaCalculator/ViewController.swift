//
//  ViewController.swift
//  AreaCalculator
//
//  Created by Nuvin Godakanda Arachchi on 2023-01-27.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var widthTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var finalValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        finalValue.text = ""
    }
    
    
    @IBAction func didTapCalculateBtn(_ sender: UIButton) {
        let width = widthTextField.text
        let height = heightTextField.text
        
        guard let unwrappedWidth = width, //  unwrapps the data from textfeild
                let unwrappedHeight = height,
                let floatWidth = Float(unwrappedWidth), // converts the unwrapped data to a float
                let floatHeight = Float(unwrappedHeight)
        else {return}
        
        let area = floatWidth * floatHeight
        finalValue.text = String("Area: \(area)")
    }
}

