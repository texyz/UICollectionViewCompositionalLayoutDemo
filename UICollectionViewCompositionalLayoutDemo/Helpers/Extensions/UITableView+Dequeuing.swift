//
//  UITableView+Dequeuing.swift
//  UICollectionViewCompositionalLayoutDemo
//
//  Created by Texyz on 12/15/20.
//

import UIKit

extension UITableView {
    
    // MARK: - Cell Register
    
    func register<T: UITableViewCell>(cellType: T.Type, bundle: Bundle? = nil) {
        let identifier = cellType.dequeuIdentifier
        register(cellType, forCellReuseIdentifier: identifier)
    }
    
    // MARK: - Dequeuing
    
    func dequeueReusableCell<T: UITableViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: type.dequeuIdentifier, for: indexPath) as! T
    }
    
}
