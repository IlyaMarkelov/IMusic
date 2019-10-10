//
//  SearchPresenter.swift
//  IMusic
//
//  Created by Илья Маркелов on 10.10.2019.
//  Copyright (c) 2019 Илья Маркелов. All rights reserved.
//

import UIKit

protocol SearchPresentationLogic {
  func presentData(response: Search.Model.Response.ResponseType)
}

class SearchPresenter: SearchPresentationLogic {
  weak var viewController: SearchDisplayLogic?
  
  func presentData(response: Search.Model.Response.ResponseType) {
  
    switch response {
    case .some:
        print("presenter .some")
    case .presentTracks:
        print("presenter .presentTracks")
        viewController?.displayData(viewModel: Search.Model.ViewModel.ViewModelData.displayTracks)
    }
  }
  
}
