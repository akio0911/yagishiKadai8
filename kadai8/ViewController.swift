//
//  ViewController.swift
//  kadai8
//
//  Created by 八木佑樹 on 2024/05/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redNumLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    override func viewWillAppear(_ animated: Bool) {
        redNumLabel.text = ""
        redNumLabel.text = String(SliderValueManager.shared.sliderValue)
        redSlider.value = SliderValueManager.shared.sliderValue
    }
    
    @IBAction func slider(_ sender: UISlider) {
        SliderValueManager.shared.sliderValue = redSlider.value
        redNumLabel.text = String(SliderValueManager.shared.sliderValue)
    }    
}
