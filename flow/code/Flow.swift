import UIKit
import RKCoordinator

protocol {{.moduleInfo.name}}FlowOutput: class {
    func {{.moduleInfo.nameFirstLower}}FlowDidFinish(_ coordinator: Coordinator)
}

class {{.moduleInfo.name}}Flow: BaseNavigationFlow, Coordinator {
    weak var output: {{.moduleInfo.name}}FlowOutput?

    // MARK: - Coordinator
    func start() {
        // rootViewController.setViewControllers([VC()], animated: true)
    }
}