//
//  viewController2.swift
//  kadai8
//
//  Created by 八木佑樹 on 2024/05/19.
//

import UIKit

class viewController2: UIViewController {
    @IBOutlet weak var greenNumLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewWillAppear(_ animated: Bool) {
        greenNumLabel.text = String(SliderValueManager.shared.sliderValue)
        greenSlider.value = SliderValueManager.shared.sliderValue
    }
    
    @IBAction func slider(_ sender: Any) {
        SliderValueManager.shared.sliderValue = greenSlider.value
        greenNumLabel.text = String(SliderValueManager.shared.sliderValue)
    }
}
