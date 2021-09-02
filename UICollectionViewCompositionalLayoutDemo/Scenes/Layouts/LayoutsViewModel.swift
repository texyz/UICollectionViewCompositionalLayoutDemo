//
//  LayoutsViewModel.swift
//  UICollectionViewCompositionalLayoutDemo
//
//  Created by Texyz on 12/15/20.
//

protocol LayoutsViewModelProtocol {
    
    func layout(at index: Int) -> CompositionalLayoutProtocol
    func makeLayoutCellViewModels() -> [AnyLayoutCellViewModel]
    
}

final class LayoutsViewModel: LayoutsViewModelProtocol {
    
    private lazy var layouts: [CompositionalLayoutProtocol] = {
        return [CompositionalLayoutA(),
                CompositionalLayoutB(),
                CompositionalLayoutC(),
                CompositionalLayoutD(),
                CompositionalLayoutE(),
                CompositionalLayoutF(),
                CompositionalLayoutG(),
                CompositionalLayoutH(),
                CompositionalLayoutI()]
    }()

    private let factory: LayoutsViewFactoryProtocol

    init(factory: LayoutsViewFactoryProtocol) {
        self.factory = factory
    }
    
    // MARK: - LayoutsViewModelProtocol
    
    func layout(at index: Int) -> CompositionalLayoutProtocol {
        return factory.layouts[index]
    }
    
    func makeLayoutCellViewModels() -> [AnyLayoutCellViewModel] {
        let cellViewModels = factory.layouts.map { LayoutCellViewModel($0) }
        return cellViewModels.map { AnyLayoutCellViewModel($0) }
    }
    
}
