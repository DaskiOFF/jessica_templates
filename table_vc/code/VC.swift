import UIKit

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
    lazy var tableAdapter = TableViewAdapter(tableView: self.tableView)

    // MARK: - UI
    let tableView: UITableView = UITableView()

    // MARK: - Init / Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        setupTableAdapter()
        configureTableAdapterContent()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    // MARK: - Configure
    private func configure() {
        configureNavigationBar()
        view.backgroundColor = .white

        view.addSubview(tableView)
    }

    private func configureNavigationBar() {
        title = <#Title#>
    }

    // MARK: - Actions

    // MARK: - TableAdapter
    private func configureTableAdapterContent() {
        let tableList = TableList()
        
        makeTestSection(tableList)
        
        tableAdapter.reload(with: tableList)
    }
    
    private func setupTableAdapter() {
        // tableAdapter.callbacks...
        // tableAdapter.scrollViewCallbacks...
    }
    
    // MARK: Make sections
    private func makeTestSection(_ list: TableList) {
        let section = list[SectionIds.diary.rawValue]
        section.headerHeight = 32
        section.footerHeight = CGFloat.leastNonzeroMagnitude
        
        do {
            let vm = TableSwitchCellVM(title: "Test", isOn: true)
            vm.action = tableCellAction
            section.append(row: TableRow<TableSwitchCell>(id: RowIds.switchIndex(1).rawValue, viewModel: vm))
        }
        do {
            let vm = TableSwitchCellVM(title: "Test", isOn: true)
            vm.action = tableCellAction
            section.append(row: TableRow<TableSwitchCell>(id: RowIds.switchIndex(2).rawValue, viewModel: vm))
        }
        do {
            let vm = TableSwitchCellVM(title: "Test", isOn: true)
            vm.action = tableCellAction
            section.append(row: TableRow<TableSwitchCell>(id: RowIds.switchIndex(3).rawValue, viewModel: vm))
        }
    }
    
    // MARK: Table Actions
    private lazy var tableCellAction: CellVM.ActionType = { [weak self] _ in
        guard let sself = self else { return }
        
        print("cell taped")
    }

    // MARK: - Private
}