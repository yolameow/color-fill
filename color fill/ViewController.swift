//
//  ViewController.swift
//  color fill
//
//  Created by Mac on 17.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var currentColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentColorView.layer.cornerRadius = 20
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redValueLabel.text = String(redSlider.value)
        greenValueLabel.text = String(greenSlider.value)
        blueValueLabel.text = String(blueSlider.value)
    }
    
    @IBAction func redSliderAction() {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        redValueLabel.text = String(round(100*redSlider.value)/100)
        
        currentColorView.backgroundColor = UIColor(displayP3Red: (redValue*255), green: (greenValue*255), blue: (blueValue*255), alpha: redValue)
        }
    
    @IBAction func greenSliderAction() {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        greenValueLabel.text = String(round(100*greenSlider.value)/100)
        
        currentColorView.backgroundColor = UIColor(displayP3Red: (redValue*255), green: (greenValue*255), blue: (blueValue*255), alpha: greenValue)
    }
    
    @IBAction func blueSliderAction() {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        blueValueLabel.text = String(round(100*blueSlider.value)/100)
        
        currentColorView.backgroundColor = UIColor(displayP3Red: (redValue*255), green: (greenValue*255), blue: (blueValue*255), alpha: blueValue)
    }
    
}


