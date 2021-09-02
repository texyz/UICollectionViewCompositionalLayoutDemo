//
//  LayoutCellViewModel.swift
//  UICollectionViewCompositionalLayoutDemo
//
//  Created by Texyz on 12/15/20.
//

protocol LayoutCellViewModelProtocol {
    
    var title: String? { get }
    var subtitle: String? { get }
    
}

struct LayoutCellViewModel: LayoutCellViewModelProtocol {
    
    let title: String?
    let subtitle: String?
    
    init(_ layout: CompositionalLayoutProtocol) {
        self.title = layout.title
        self.subtitle = layout.subtitle
    }
    
}
