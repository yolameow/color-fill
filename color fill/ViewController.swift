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
        
        redSlider.minimumTrackTintColor = .orange
        blueSlider.minimumTrackTintColor = .orange
        greenSlider.minimumTrackTintColor = .orange
        
        redValueLabel.text = String(redSlider.value)
        greenValueLabel.text = String(greenSlider.value)
        blueValueLabel.text = String(blueSlider.value)
       
    }

    @IBAction func redSliderAction() {
        let redValue = CGFloat(redSlider.value)
        redValueLabel.text = String(round(100*redSlider.value)/100)
        //currentColorView.tintColor = UIColor.red.withAlphaComponent(redValue)
       // currentColorView.tintColor = UIColor(displayP3Red: 0.33, green: 0.33, blue: 0.33, alpha: redValue)
    }
    
    @IBAction func greenSliderAction() {
        let greenValue = CGFloat(greenSlider.value)
        greenValueLabel.text = String(round(100*greenSlider.value)/100)
        //currentColorView.tintColor = UIColor(displayP3Red: 0.33, green: 0.33, blue: 0.33, alpha: greenValue)
    }
    
    @IBAction func blueSliderAction() {
        let blueValue = CGFloat(blueSlider.value)
        blueValueLabel.text = String(round(100*blueSlider.value)/100)
       // currentColorView.tintColor = UIColor(displayP3Red: 0.33, green: 0.33, blue: 0.33, alpha: blueValue)
    }
    
}

