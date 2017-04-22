//
//  PinSelection.swift
//  AMANZI_FINAL
//
//  Created by Brennan Nugent on 4/21/17.
//  Copyright © 2017 Brennan Nugent. All rights reserved.
//

import UIKit
import MapKit

class PinSelection: UIViewController {
    
    @IBOutlet weak var floorTextField: UITextField!
    @IBOutlet weak var buildingTextField: UITextField!
    @IBOutlet weak var pinColorSelection: UIPickerView!
   var colorArray = ["Green", "Blue", "Red"]
    override func viewDidLoad() {
        pinColorSelection.dataSource = self
        pinColorSelection.delegate = self
        
    }

    @IBAction func savePressed(_ sender: UIBarButtonItem) {
    
        
    }
   
}
//MARK:- Delegates/DataSources
extension PinSelection: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorArray[row]
    }
}
