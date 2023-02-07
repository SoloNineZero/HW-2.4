//
//  ViewController.swift
//  HW 2.4
//
//  Created by Игорь Солодянкин on 06.02.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 12
        
        setupSlider()
        sliderAction()
        changeColor()
    }

    
    @IBAction func sliderAction() {
        setup(colorLabel: redLabel, slider: redSlider)
        setup(colorLabel: greenLabel, slider: greenSlider)
        setup(colorLabel: blueLabel, slider: blueSlider)
        changeColor()
    }
    
    private func changeColor() {
        colorView.backgroundColor  = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    
    private func setupSlider() {
        redSlider.value = 0.38
        greenSlider.value = 0.85
        blueSlider.value = 1
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func setup(colorLabel: UILabel , slider: UISlider) {
        colorLabel.text = String(format: "%.2f", slider.value)
    }
    
}

