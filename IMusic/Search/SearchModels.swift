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
        case some
        case getTracks
      }
    }
    struct Response {
      enum ResponseType {
        case some
        case presentTracks
      }
    }
    struct ViewModel {
      enum ViewModelData {
        case some
        case displayTracks
      }
    }
  }
  
}
