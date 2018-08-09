import UIKit
import RKTableAdapter

class {{ .moduleInfo.name }}CellCalculator: CellCalculator<{{ .moduleInfo.name }}CellLayout, {{ .moduleInfo.name }}CellVM> {
    // MARK: - Properties
//    let <#field#>Font = UIFont.systemFont(ofSize: 20, weight: .semibold)

    // MARK: - Calculate
    override func calculate(with viewModel: {{ .moduleInfo.name }}CellVM, width: CGFloat) -> {{ .moduleInfo.name }}CellLayout {
        let layout = {{ .moduleInfo.name }}CellLayout()
        let contentWidth: CGFloat = width - layout.edgeInsets.left - layout.edgeInsets.right

        // Calculate...

       let height: CGFloat = <#layout.FRAME.maxY#> + layout.edgeInsets.bottom
        layout.width = width
        layout.height = height
        return layout
    }
}