//
//  ViewController.swift
//  ColorizedApp
//
//  Created by MikhaiL on 27.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var paletteView: UIView!
    
    @IBOutlet private var redValue: UILabel!
    @IBOutlet private var greenValue: UILabel!
    @IBOutlet private var blueValue: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paletteView.layer.cornerRadius = 15
        setColor()
        
        redValue.text = string(from: redSlider)
        greenValue.text = string(from: greenSlider)
        blueValue.text = string(from: blueSlider)
    }
    
    @IBAction private func SliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
            case redSlider:
                redValue.text = string(from: redSlider)
            case greenSlider:
                greenValue.text = string(from: greenSlider)
            default:
                blueValue.text = string(from: blueSlider)
        }
    }
    
    private func setColor() {
        paletteView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value) ,
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
