//
//  ViewController.swift
//  No.2
//
//  Created by ktrade on 2020/8/11.
//  Copyright © 2020 Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViews: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var genderSegment: UISegmentedControl!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var interestingStatus: UISwitch!
    @IBOutlet weak var numberLabel: UILabel!
    
    var imageStatus: Bool?
    var interestingSwitchStatus: Bool?
    var numberSlider: Int?

    @IBAction func ageSliderAction(_ sender: UISlider) {
//         sender.setValue(sender.value.rounded(), animated: true)
        numberLabel.text = Int(sender.value).description
        
        numberSlider = Int(numberLabel.text ?? "0")
    }
    
    
    @IBAction func checkButton(_ sender: UIButton) {
        if textField.text == "Aries" && genderSegment.selectedSegmentIndex == 0 && interestingStatus.isOn == true && numberSlider ?? 20 >= 30{
            imageViews.image = UIImage(named: "success")
        } else {
            imageViews.image = UIImage(named: "fail")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)
        setupSlider()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    fileprivate func setupSlider() {
          ageSlider.minimumValue = 20
          ageSlider.maximumValue = 50
          ageSlider.value = 20
          numberLabel.text = "20"
      }

    

}

