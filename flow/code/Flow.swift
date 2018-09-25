import UIKit
import RKCoordinator

protocol {{.moduleInfo.name}}FlowOutput: class {
    func {{.moduleInfo.nameFirstLower}}FlowDidFinish(_ coordinator: Coordinator)
}

class {{.moduleInfo.name}}Flow: BaseNavigationFlow, Coordinator {
    weak var output: {{.moduleInfo.name}}FlowOutput!
    let vcFactory: ViewControllerFactory
    let flowFactory: FlowFactory

    init(rootViewController: UINavigationController, vcFactory: ViewControllerFactory, flowFactory: FlowFactory) {
        self.vcFactory = vcFactory
        self.flowFactory = flowFactory
        
        super.init(rootViewController: rootViewController)
    }

    // MARK: - Coordinator
    func start() {
        showMainVC()
    }

    func showMainVC() {
        //rootViewController.setViewControllers([VC()], animated: true)
    }
}