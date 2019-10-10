//
//  SearchViewController.swift
//  IMusic
//
//  Created by Илья Маркелов on 10.10.2019.
//  Copyright © 2019 Илья Маркелов. All rights reserved.
//

import UIKit
import Alamofire

struct TrackModel {
    var trackName: String
    var artistName: String
}


class SearchViewController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    
    let tracks = [TrackModel(trackName: "From The Inside", artistName: "Linkin Park"),
                 TrackModel(trackName: "Numb", artistName: "Linkin Park")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupSearchBar()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
    private func setupSearchBar() {
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        let track = tracks[indexPath.row]
        cell.textLabel?.text = "\(track.trackName)\n\(track.artistName)"
        cell.textLabel?.numberOfLines = 2
        cell.imageView?.image = #imageLiteral(resourceName: "image")
        return cell
    }
}

extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //print(searchText)
        
        let url = "https://itunes.apple.com/search?term=\(searchText)"
        
        AF.request(url).responseData { (dataResponse) in
            if let error = dataResponse.error {
                print("Error recieved requesting data: \(error.localizedDescription)")
                return
            }
            
            guard let data = dataResponse.data else {return}
            let someStrng = String(data: data, encoding: .utf8)
            print(someStrng ?? "")
        }
    }
}
