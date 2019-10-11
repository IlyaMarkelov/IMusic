//
//  SearchModels.swift
//  IMusic
//
//  Created by Илья Маркелов on 10.10.2019.
//  Copyright (c) 2019 Илья Маркелов. All rights reserved.
//

import UIKit

enum Search {
   
  enum Model {
    struct Request {
      enum RequestType {
        case getTracks(searchTerm: String)
      }
    }
    struct Response {
      enum ResponseType {
        case presentTracks(searchResponse: SearchResponse?)
        case presentFooterView
      }
    }
    struct ViewModel {
      enum ViewModelData {
        case displayTracks(searchViewModel: SearchViewModel)
        case displayFooterView
      }
    }
  }
}

struct SearchViewModel {
    struct Cell: TrackCellViewModel {
        var iconUrlString: String?
        var trackName: String
        var collectionName: String
        var artistName: String
        var previewUrl: String?
    }
    
    let cells: [Cell]
}
