import UIKit
import RKTableAdapter

class {{ .moduleInfo.name }}{{.var.prefix}}CellCalculator: CellCalculator<{{ .moduleInfo.name }}{{.var.prefix}}CellLayout, {{ .moduleInfo.name }}{{.var.prefix}}CellVM> {
    // MARK: - Properties
    //let <#field#>Font = UIFont.systemFont(ofSize: 20, weight: .semibold)

    // MARK: - Calculate
    override func calculate(with viewModel: {{ .moduleInfo.name }}{{.var.prefix}}CellVM, width: CGFloat) -> {{ .moduleInfo.name }}{{.var.prefix}}CellLayout {
        let layout = {{ .moduleInfo.name }}{{.var.prefix}}CellLayout()
        let contentWidth: CGFloat = width - layout.edgeInsets.left - layout.edgeInsets.right

        // Calculate...

       let height: CGFloat = <#layout.FRAME.maxY#> + layout.edgeInsets.bottom
        layout.width = width
        layout.height = height
        return layout
    }
}