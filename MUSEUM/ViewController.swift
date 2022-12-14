//
//  ViewController.swift
//  MUSEUM
//
//  Created by Mac on 13.12.2022.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchObject()
    }
    
    private func fetchObject() {
        
        guard let url = URL(string: "https://collectionapi.metmuseum.org/public/collection/v1/departments") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data, let response else {
                print(error?.localizedDescription ?? "no erros description error" )
                return
            }
            print(response)
            do {
                let artObject = try JSONDecoder().decode(ArtObject.self, from: data)
                print(artObject)
            }catch let error {
                
                print(error)
            }
        }.resume()
    }
}
