//
//  AppDelegate.swift
//  HotReloadExample
//
//  Created by Manu on 16/06/2022.
//

import UIKit
import Inject

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private lazy var navigationController = UINavigationController()

    func application(
        _: UIApplication,
        didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        window = UIWindow()
        guard let window = window else { fatalError("Can't start without a window") }

        let vc = Inject.ViewControllerHost(HotReloadableViewController())
        navigationController.setViewControllers([vc], animated: true)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()

        return true
    }
}
