//
//  ViewController.swift
//  HW 2.4
//
//  Created by Игорь Солодянкин on 06.02.2023.
//

import UIKit

class ViewController: UIViewController {

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
        setupLabel()
        changeColor()
    }

    
    @IBAction func sliderAction() {
        setupLabel()
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
        redSlider.value = 0.88
        greenSlider.value = 0.66
        blueSlider.value = 0.44
        
        redSlider.minimumValue = 0
        greenSlider.minimumValue = 0
        blueSlider.minimumValue = 0
        
        redSlider.maximumValue = 1
        greenSlider.maximumValue = 1
        blueSlider.maximumValue = 1
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func setupLabel() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
}

