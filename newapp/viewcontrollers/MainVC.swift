import UIKit

class MainVC: UIViewController {
    // MARK: - Variables
    
    // MARK: - UI
    
    // MARK: - Init / Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    // MARK: - Configure
    private func configure() {
        configureNavigationBar()
        view.backgroundColor = .white
    }
    
    private func configureNavigationBar() {
        title = "Заголовок"
    }
    
    // MARK: - Actions
    
    // MARK: - Private
}