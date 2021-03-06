//
//  SceneDelegate.swift
//  UICollectionViewCompositionalLayoutDemo
//
//  Created by Texyz on 12/15/20.

//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)

        let viewModel = LayoutsViewModel(factory: LayoutsViewFactory())
        let layoutsViewController = LayoutsViewController(viewModel: viewModel)
        let navigationController = UINavigationController(rootViewController: layoutsViewController)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
}

