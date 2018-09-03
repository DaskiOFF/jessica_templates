import UIKit
import RKCoordinator

class AppCoordinator: BaseAppCoordinator,
MainFlowOutput {
    var rootViewController: UINavigationController

    // MARK: - Init
    override init(window: UIWindow) {
        self.rootViewController = UINavigationController()
        
        super.init(window: window)

        self.window.rootViewController = rootViewController
    }

    // MARK: - Start
    func start() {
        let coordinator = MainFlow(rootViewController: self.rootViewController)
        add(coordinator)
        coordinator.output = self
        coordinator.start()
    }
    
    // MARK: - MainFlowOutput
    func mainFlowDidFinish(_ coordinator: Coordinator) {
        remove(coordinator)
        start()
    }
}
