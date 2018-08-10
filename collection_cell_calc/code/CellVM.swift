import Foundation
import RKTableAdapter

class {{ .moduleInfo.name }}CollectionCellVM: CollectionCellVM, Equatable {
    // MARK: - Properties
    var width: CGFloat = UIScreen.main.bounds.width {
        didSet {
            calculator.layout(with: self, width: width)
        }
    }
    let calculator: {{ .moduleInfo.name }}CellCalculator = {{ .moduleInfo.name }}CellCalculator()

    // MARK: - Init
    init() {
        super.init(action: nil, userInfo: nil)
    }

    // MARK: - CollectionItemSizeComputable
    override var defaultSize: CGSize? {
        let layout = calculator.layout(with: self, width: width)
        return CGSize(width: layout.width, height: layout.height)
    }

    // MARK: - Equatable
    static func == (lhs: {{ .moduleInfo.name }}CollectionCellVM, rhs: {{ .moduleInfo.name }}CollectionCellVM) -> Bool {
        // guard lhs.title == rhs.title else { return false }
        return true
    }
}
