//
//  RootCoordinator.swift
//  cosmin-portfolio
//
//  Created by Cosmin Cosan - work on 15.11.2024.
//

import Combine
import UIKit
import SwiftUI

class RootCoordinator {
    weak var window: UIWindow?
    weak var navigationController: UINavigationController?
    
    var disposeBag = Set<AnyCancellable>()
        
    func start(in window: UIWindow) {
        let navigationController = UINavigationController()
        
        self.window = window
        self.window?.rootViewController = navigationController
        self.navigationController = navigationController
        
        let view = SplashView()
        let viewController = UIHostingController(rootView: view)
        
        navigationController.pushViewController(viewController, animated: false)
//        guard let _ = Session.hasSeenOnboarding else {
//            showOnboarding(animatedEntrance: false)
//            return
//        }
        
        handleActiveSession(animatedEntrance: false)
    }
}

//MARK: - extension
extension RootCoordinator {
    func handleActiveSession(animatedEntrance: Bool = true) {
//        guard let navigationController = self.navigationController else {
//            return
//        }
        
//        self.mainCoordinator = MainCoordinator(
//            navigationController: navigationController,
//            onCompletion: { [weak self] action in
//                self?.handleAction(action)
//            }
//        )
//        
//        guard let shouldCheckBiometrics = Session.shouldCheckBiometrics, shouldCheckBiometrics else {
//            mainCoordinator?.start(animatedEntrance: animatedEntrance)
//            return
//        }
        
//        mainCoordinator?.startAndCheckBiometrics(animatedEntrance: animatedEntrance)
    }
}
