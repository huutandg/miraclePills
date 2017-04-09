//
//  ViewController.swift
//  MiraclePill
//
//  Created by Tan on 4/8/17.
//  Copyright © 2017 Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var fullnameText: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressText: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var countryText: UITextField!
    
    @IBOutlet weak var zipLabel: UILabel!
    
    @IBOutlet weak var zipText: UITextField!
    
    @IBOutlet weak var successImage: UIImageView!
    
    @IBOutlet weak var buyBtn: UIButton!
    let states = ["Bac Ninh", "Hai Duong", "Ha Noi", "Hai Phong", "Da Nang"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipText.isHidden = true
        zipLabel.isHidden = true
    }
    @IBAction func buyBtnPressed(_ sender: Any) {
        successImage.isHidden = false
        divider.isHidden = true
        pillImage.isHidden = true
        pillLabel.isHidden = true
        priceLabel.isHidden = true
        fullnameLabel.isHidden = true
        fullnameText.isHidden = true
        addressLabel.isHidden = true
        addressText.isHidden = true
        cityLabel.isHidden = true
        cityText.isHidden = true
        stateLabel.isHidden = true
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipText.isHidden = true
        zipLabel.isHidden = true
        buyBtn.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryText.isHidden = false
        zipText.isHidden = false
        zipLabel.isHidden = false
    }

}

