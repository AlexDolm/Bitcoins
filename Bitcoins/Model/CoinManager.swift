//
//  CoinManager.swift
//  Bitcoins
//
//  Created by mac on 26.07.2022.
//

import Foundation

struct CoinManager {
    
    //https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=54E5BFFF-8C73-4058-97B5-3A179B61D63F
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "54E5BFFF-8C73-4058-97B5-3A179B61D63F"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func getPrice(for currency: String) {
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String){
     
            if let url = URL(string: urlString) {
                
                let session = URLSession(configuration: .default)
                
    
                let task = session.dataTask(with: url) { (data, response, error) in
                    if error != nil {
                        print(error!)
                        return
                    }

                    let dataAsString = String(data: data!, encoding: .utf8)
                    print(dataAsString)
                    
                }
                task.resume()
            }
        
//        guard let URLAnime = URL(string: "https://ghibliapi.herokuapp.com/films/58611129-2dbc-4a81-a72f-77ddfc1b1b49") else {return}
//
//        URLSession.shared.dataTask(with: URLAnime) { data, response, error in
//            guard let data = data else {return}
//
//            do {
//                let animes = try JSONDecoder().decode(URLStructAnime.self, from: data)
//                print(animes.original_title)
//
//            } catch  {
//                print(error)
//            }
//
//
//        }.resume()
        
        
        
    }
}
