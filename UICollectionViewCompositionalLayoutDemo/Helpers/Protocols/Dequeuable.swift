//
//  Dequeuable.swift
//  UICollectionViewCompositionalLayoutDemo
//
//  Created by Texyz on 12/15/20.
//

import UIKit

protocol Dequeuable {
    
    static var dequeuIdentifier: String { get }
    
}

extension Dequeuable where Self: UIView {
    
    static var dequeuIdentifier: String {
        return String(describing: self)
    }
    
}

extension UITableViewCell: Dequeuable { }

extension UICollectionViewCell: Dequeuable { }
