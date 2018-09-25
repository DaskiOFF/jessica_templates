import UIKit
import RKTableAdapter
import RKAutoLayout

protocol {{ .moduleInfo.name }}VCOutput: class {
}

class {{ .moduleInfo.name }}VC: UIViewController {
    enum SectionIds: String {
        case diary
    }
    enum RowIds {
        case switchIndex(Int)
        
        var rawValue: String {
            switch self {
            case .switchIndex(let index):
                return "switchIndex\(index)"
            }
        }
    }
    
    // MARK: - Variables
    weak var output: {{ .moduleInfo.name }}VCOutput!
    lazy var collectionAdapter = CollectionViewAdapter(collectionView: collectionView)

    // MARK: - DI

    // MARK: - UI
    lazy var collectionViewFlow: UICollectionViewFlowLayout = {
        let flow = UICollectionViewFlowLayout()
        flow.minimumInteritemSpacing = 10
        flow.minimumLineSpacing = 10
        flow.sectionInset.top = 20
        flow.scrollDirection = .vertical

        return flow
    }()
    lazy var collectionView: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlow)
        cv.backgroundColor = .white
        return cv
    }()

    // MARK: - Init / Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        setupCollectionAdapter()
        configureCollectionAdapterContent()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    // MARK: - Configure
    private func configure() {
        configureNavigationBar()
        view.backgroundColor = .white

        collectionView.frame = view.bounds
        view.addSubview(collectionView)
    }

    private func configureNavigationBar() {
        title = <#Title#>
    }

    // MARK: - Actions

    // MARK: - CollectionAdapter
    private func setupCollectionAdapter() {
        // collectionAdapter.callbacks...
        // collectionAdapter.scrollViewCallbacks...
    }

    private func configureCollectionAdapterContent() {
        let collectionList = CollectionList()
        
        makeTestSection(collectionList)

        collectionAdapter.reload(with: collectionList)
    }
    
    // MARK: Make sections
    private func makeTestSection(_ list: CollectionList) {
        let section = list[SectionIds.diary.rawValue]
        
        do {
            // let vm = <#Collection Cell VM#>
            // vm.action = collectionCellAction
            // section.append(row: TableRow<<#Collection Cell Class#>>(id: RowIds.switchIndex(3).rawValue, viewModel: vm))
        }
    }
    
    // MARK: Actions
    private lazy var collectionCellAction: CollectionCellVM.ActionType = { [weak self] _ in
        guard let sself = self else { return }
        
        print("cell taped")
    }

    // MARK: - Private
}
