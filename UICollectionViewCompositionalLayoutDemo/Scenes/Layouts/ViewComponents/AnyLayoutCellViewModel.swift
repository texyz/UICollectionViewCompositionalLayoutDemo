//
//  AnyLayoutCellViewModel.swift
//  UICollectionViewCompositionalLayoutDemo
//
//  Created by Texyz on 12/15/20.
//

struct AnyLayoutCellViewModel: Hashable, LayoutCellViewModelProtocol {
    
    let title: String?
    let subtitle: String?
    
    init(_ viewModel: LayoutCellViewModelProtocol) {
        self.title = viewModel.title
        self.subtitle = viewModel.subtitle
    }
    
}
