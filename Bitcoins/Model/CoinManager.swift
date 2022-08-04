//
//  CoinManager.swift
//  Bitcoins
//
//  Created by mac on 26.07.2022.
//

import Foundation

protocol CoinManagerDelegate {  //protocol for transmitting data to the controller
    func didUpdatePrice(price: String, currency: String)
    func didFailWithError(error: Error)
}

struct CoinManager {
    
    
    var delegate: CoinManagerDelegate?
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC" //course data
    let apiKey = "54E5BFFF-8C73-4058-97B5-3A179B61D63F" //access key to api
    
    let currencyArray = ["AUD","BRL","CAD","CNY","EUR","GBP","HKD","IDR", //array of existing currencies
                         "ILS","INR","JPY","MXN","NOK","NZD","PLN","RON",
                         "RUB","SEK","SGD","USD","ZAR"]

    func getPrice(for currency: String) {
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data { //fg
                    if let bitcoinPrice = self.parseJSON(safeData){
                        let priceString = String(format: "%.2f", bitcoinPrice) //
                        self.delegate?.didUpdatePrice(price: priceString, currency: currency)
                        print(bitcoinPrice)
                    }
                    
                 }
                
            }
            task.resume()
        }
    }
    
    func parseJSON(_ data: Data) -> Double? { //the function returns the exchange rate of the current currency
        
        let decoder = JSONDecoder()
        do {
            
            let decodedData = try decoder.decode(CoinData.self, from: data)
            
            let lastPrice = decodedData.rate
            print(lastPrice)
            return lastPrice
            
        } catch {
            print(error)
            return nil
        }
    }
}
