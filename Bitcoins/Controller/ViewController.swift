//
//  ViewController.swift
//  Bitcoins
//
//  Created by mac on 26.07.2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    

    let image = UIImageView()
    let labelCount = UILabel()
    let labelCurrency = UILabel()
    let pickerView = UIPickerView()
    
    let coinManager = CoinManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        startUI()
        pickerView.dataSource = self
        pickerView.delegate = self
    }


}

extension ViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int { //количество значений
        return coinManager.currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
    
    
}

