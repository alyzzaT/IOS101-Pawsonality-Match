//
//  LeadboardViewController.swift
//  Pawsonality-Match
//
//  Created by alyssa tu on 8/5/25.
//

import UIKit

struct Breed: Codable {
    let name: String
    let reference_image_id: String?
}

class LeaderboardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var breeds: [Breed] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let tableHeight = tableView.frame.height
        let desiredCellHeight = tableHeight / 3
        tableView.rowHeight = desiredCellHeight
        
        fetchBreeds()
    }

    
    func fetchBreeds() {
        guard let url = URL(string: "https://api.thedogapi.com/v1/breeds") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                print("Network error:", error ?? "unknown error")
                return
            }
            
            do {
                let breedsData = try JSONDecoder().decode([Breed].self, from: data)
                DispatchQueue.main.async {
                    self.breeds = Array(breedsData.prefix(10))
                    self.tableView.reloadData()
                }
            } catch {
                print("Decoding error:", error)
            }
        }
        task.resume()
    }
    
    // MARK: - TableView DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return breeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LeaderboardCell", for: indexPath) as? LeaderboardCell else {
            fatalError("Cell not found")
        }
        
        let breed = breeds[indexPath.row]
        
        cell.rankText.text = "#\(indexPath.row + 1)"
        cell.breedNameText.text = breed.name
        
        if let imageId = breed.reference_image_id,
           let imageUrl = URL(string: "https://cdn2.thedogapi.com/images/\(imageId).jpg") {
            URLSession.shared.dataTask(with: imageUrl) { data, _, _ in
                if let data = data {
                    DispatchQueue.main.async {
                        cell.breedImageView.image = UIImage(data: data)
                    }
                }
            }.resume()
        } else {
            cell.breedImageView.image = nil
        }
        
        return cell
    }
}
