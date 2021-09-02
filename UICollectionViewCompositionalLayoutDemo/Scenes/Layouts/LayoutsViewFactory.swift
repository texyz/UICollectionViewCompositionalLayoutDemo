//
//  LayoutsViewFactory.swift
//  UICollectionViewCompositionalLayoutDemo
//
//  Created by Texyz on 12/15/20.
//

import Foundation

protocol LayoutsViewFactoryProtocol {
    
    var layouts: [CompositionalLayoutProtocol] { get }

}

struct LayoutsViewFactory: LayoutsViewFactoryProtocol {

    var layouts: [CompositionalLayoutProtocol] {
        return [CompositionalLayoutA(),
                CompositionalLayoutB(),
                CompositionalLayoutC(),
                CompositionalLayoutD(),
                CompositionalLayoutE(),
                CompositionalLayoutF(),
                CompositionalLayoutG(),
                CompositionalLayoutH(),
                CompositionalLayoutI()]
    }

}
