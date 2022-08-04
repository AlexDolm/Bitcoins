//
//  ViewController.swift
//  Bitcoins
//
//  Created by mac on 26.07.2022.
//

import UIKit

class ViewController: UIViewController  {


    let image = UIImageView()
    let labelCount = UILabel()
    let labelCurrency = UILabel()
    let pickerView = UIPickerView()
    
    var coinManager = CoinManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        startUI() //loading the interface
        coinManager.delegate = self
        pickerView.dataSource = self
        pickerView.delegate = self
    }
}

extension ViewController: CoinManagerDelegate{ //data update function
    func didUpdatePrice(price: String, currency: String) {
        DispatchQueue.main.async {
            self.labelCount.text = price
            self.labelCurrency.text = currency
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
    
}


extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int { //количество столбцов выбора
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int { //количество значений
        return coinManager.currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? { //заголовки
        return coinManager.currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) { //будет вызываться каждый раз, когда пользователь прокручивает средство выбора. Когда это произойдет, он запишет номер строки, который был выбран.
        let currency = coinManager.currencyArray[row]
        coinManager.getPrice(for: currency)

    }
    
    
}

