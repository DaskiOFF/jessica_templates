import UIKit
import RKAutoLayout

protocol {{ .moduleInfo.name }}VCOutput: class {
}

class {{ .moduleInfo.name }}VC: UIViewController {
    // MARK: - Variables
    weak var output: {{ .moduleInfo.name }}VCOutput!

    // MARK: - DI

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
        title = <#Title#>
    }

    // MARK: - Actions

    // MARK: - Private
}