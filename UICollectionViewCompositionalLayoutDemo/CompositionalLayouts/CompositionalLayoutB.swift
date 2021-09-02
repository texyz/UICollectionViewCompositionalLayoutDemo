//
//  CompositionalLayoutB.swift
//  UICollectionViewCompositionalLayoutDemo
//
//  Created by Texyz on 12/15/20.
//

import UIKit

struct CompositionalLayoutB: CompositionalLayoutProtocol {
    
    var title: String {
        return "Style B"
    }
    
    var subtitle: String? {
        return "Simple layout with square cells."
    }
    
    func create() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                              heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .fractionalWidth(0.5))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 4)
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
}
