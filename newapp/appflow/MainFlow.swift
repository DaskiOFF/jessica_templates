import UIKit
import RKCoordinator

protocol MainFlowOutput: class {
    func mainFlowDidFinish(_ coordinator: Coordinator)
}

class MainFlow: BaseNavigationFlow, Coordinator {
    weak var output: MainFlowOutput?

    // MARK: - Coordinator
    func start() {
        rootViewController.setViewControllers([MainVC()], animated: true)
    }
}