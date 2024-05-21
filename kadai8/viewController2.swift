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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenNumLabel.text = ""
    }
    
    @IBAction func slider(_ sender: Any) {
        var sliderNum = greenSlider.value
        greenNumLabel.text = String(sliderNum)
        UserDefaults.standard.set(sliderNum, forKey: "sliderValue")
    }
    
    //viewControllerへの値渡し
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        var num = UserDefaults.standard.float(forKey: "sliderValue")
        greenNumLabel.text = String(num)
        greenSlider.value = num
    }
}
