import UIKit
import RKTableAdapter

class {{ .moduleInfo.name }}TableCellVM: TableCellVM, Equatable {
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
    static func == (lhs: {{ .moduleInfo.name }}TableCellVM, rhs: {{ .moduleInfo.name }}TableCellVM) -> Bool {
        //guard lhs.property == rhs.property else { return false }
        return true
    }
}
