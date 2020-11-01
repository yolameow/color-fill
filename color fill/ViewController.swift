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
        
        setColor()
        
        setValue(for: redValueLabel, greenValueLabel, blueValueLabel)
        
    }
    
   
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        
        switch sender.tag {
        case 0: redValueLabel.text = string(from: sender)
        case 1: greenValueLabel.text = string(from: sender)
        case 2: blueValueLabel.text = string(from: sender)
        default: break
        }
    }
    
    private func setColor() {
        currentColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                   green: CGFloat(greenSlider.value),
                                                   blue: CGFloat(blueSlider.value),
                                                   alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label.tag {
            case 0: redValueLabel.text = string(from: redSlider)
            case 1: greenValueLabel.text = string(from: greenSlider)
            case 2: blueValueLabel.text = string(from: blueSlider)
            default: break
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    
    
}


