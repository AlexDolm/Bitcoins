//
//  MainUI.swift
//  Bitcoins
//
//  Created by mac on 26.07.2022.
//

import UIKit

extension ViewController  {
    
    
    func startUI(){
        
        let stackView = UIStackView()
        let stackViewBitcoinCount = UIStackView()
        let viewBitcoinCount = UIView()
        let label = UILabel()
        let viewCurrency = UIView()
        
        view.backgroundColor = UIColor(named: "Background Color")
        
        stackView.axis = .vertical
        stackView.distribution = .fill
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 150).isActive = true

        
        
        label.text = "BitCoins"
        label.textAlignment = .center
        label.textColor = UIColor(named: "Text Color")
        label.font = UIFont.systemFont(ofSize: 50, weight: UIFont.Weight.thin)
        stackView.addArrangedSubview(label)
        
        stackView.addArrangedSubview(viewBitcoinCount)
        
        stackViewBitcoinCount.axis = .horizontal
        stackViewBitcoinCount.spacing = 10
        stackViewBitcoinCount.distribution = .fillProportionally
        stackViewBitcoinCount.backgroundColor = .tertiaryLabel
        stackViewBitcoinCount.layer.cornerRadius = 5
        stackViewBitcoinCount.layer.masksToBounds = true
        viewBitcoinCount.addSubview(stackViewBitcoinCount)
        stackViewBitcoinCount.translatesAutoresizingMaskIntoConstraints = false
        stackViewBitcoinCount.rightAnchor.constraint(equalTo: viewBitcoinCount.rightAnchor, constant: -10).isActive = true
        stackViewBitcoinCount.leftAnchor.constraint(equalTo: viewBitcoinCount.leftAnchor, constant: 10).isActive = true
        stackViewBitcoinCount.topAnchor.constraint(equalTo: viewBitcoinCount.topAnchor).isActive = true
        stackViewBitcoinCount.bottomAnchor.constraint(equalTo: viewBitcoinCount.bottomAnchor).isActive = true
        
        
        image.image = UIImage(systemName: "bitcoinsign.circle.fill")
        image.tintColor = UIColor(named: "Icon Color")
        stackViewBitcoinCount.addArrangedSubview(image)
        image.heightAnchor.constraint(equalToConstant: 70).isActive = true
        image.widthAnchor.constraint(equalToConstant: 70).isActive = true

        labelCount.text = "..."
        labelCount.textAlignment = .right
        labelCount.font = UIFont.systemFont(ofSize: 25)
        labelCount.textColor = .white
        stackViewBitcoinCount.addArrangedSubview(labelCount)
        

        stackViewBitcoinCount.addArrangedSubview(viewCurrency)
        viewCurrency.translatesAutoresizingMaskIntoConstraints = false
        viewCurrency.widthAnchor.constraint(equalToConstant: 70).isActive = true
  
        labelCurrency.text = "USD"
        labelCurrency.textAlignment = .right
        labelCurrency.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.thin)
        labelCurrency.textColor = .white
        viewCurrency.addSubview(labelCurrency)
        labelCurrency.translatesAutoresizingMaskIntoConstraints = false
        labelCurrency.rightAnchor.constraint(equalTo: viewCurrency.rightAnchor, constant: -10).isActive = true
        labelCurrency.leftAnchor.constraint(equalTo: viewCurrency.leftAnchor).isActive = true
        labelCurrency.topAnchor.constraint(equalTo: viewCurrency.topAnchor).isActive = true
        labelCurrency.bottomAnchor.constraint(equalTo: viewCurrency.bottomAnchor).isActive = true
        
        view.addSubview(pickerView)
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        pickerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        pickerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        pickerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        pickerView.heightAnchor.constraint(equalToConstant: 210).isActive = true
        
     
    }
    
}
