//
//  ViewController.swift
//  RickandMortyFinalAPP
//
//  Created by Pavel Lazarev Macbook on 19.09.2022.
//

import UIKit

let rickAndMortyURL = "https://rickandmortyapi.com/api/character/53"

class ViewController: UIViewController {


  
    // MARK: - Override functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchRickAndMorty()
    }
    
    // MARK: - Private func
    
    private func fetchRickAndMorty() {
        guard let url = URL(string: rickAndMortyURL) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error")
                return
            }
            
            let jsonDecoder = JSONDecoder()
            
            do {
                let rickAndMorty = try jsonDecoder.decode(RickAndMorty.self, from: data)
                print(rickAndMorty)
            } catch {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
    
}
