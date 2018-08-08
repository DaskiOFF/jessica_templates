import UIKit
import RKTableAdapter

class {{ .moduleInfo.name }}CellVM: CellVM, Equatable {
    // MARK: - Properties

    // MARK: - Init
    init() {
        super.init(action: nil, userInfo: nil)
    }

    // MARK: - RowHeightComputable
    override var defaultHeight: CGFloat? {
        return 44
    }

    // MARK: - Equatable
    static func == (lhs: {{ .moduleInfo.name }}CellVM, rhs: {{ .moduleInfo.name }}CellVM) -> Bool {
        // guard lhs.property == rhs.property else { return false }
        return true
    }
}
