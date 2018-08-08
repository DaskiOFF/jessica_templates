import UIKit
import RKTableAdapter

class {{ .moduleInfo.name }}CellVM: CellVM, Equatable {
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

    // MARK: - RowHeightComputable
    override var defaultHeight: CGFloat? {
        return calculator.layout(with: self, width: width).height
    }

    // MARK: - Equatable
    static func == (lhs: {{ .moduleInfo.name }}CellVM, rhs: {{ .moduleInfo.name }}CellVM) -> Bool {
        // guard lhs.property == rhs.property else { return false }
        return true
    }
}
