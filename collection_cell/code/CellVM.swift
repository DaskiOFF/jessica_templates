import Foundation
import RKTableAdapter

class {{ .moduleInfo.name }}CollectionCellVM: CollectionCellVM, Equatable {
    // MARK: - Properties

    // MARK: - Init
    init() {
        super.init(action: nil, userInfo: nil)
    }

    // MARK: - CollectionItemSizeComputable
    override var defaultSize: CGSize? {
        return CGSize(width: 50, height: 50)
    }

    // MARK: - Equatable
    static func == (lhs: {{ .moduleInfo.name }}CollectionCellVM, rhs: {{ .moduleInfo.name }}CollectionCellVM) -> Bool {
        // guard lhs.title == rhs.title else { return false }
        return true
    }
}
