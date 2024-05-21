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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redNumLabel.text = ""
    }


    @IBAction func slider(_ sender: Any) {
        var sliderNum = redSlider.value
        redNumLabel.text = String(sliderNum)
        UserDefaults.standard.set(sliderNum, forKey: "sliderValue")
    }
    
    //viewController2への値渡し
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        var num = UserDefaults.standard.float(forKey: "sliderValue")
        redNumLabel.text = String(num)
        redSlider.value = num
    }
}

