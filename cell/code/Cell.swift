import UIKit
import RKTableAdapter

class {{ .moduleInfo.name }}TableCell: UITableViewCell, ConfigurableCell {
    typealias ViewModelType = {{ .moduleInfo.name }}TableCellVM

    // MARK: - Properties
    var viewModel: ViewModelType?

    // MARK: - UI

    // MARK: - Init
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }

    override func prepareForReuse() {
        super.prepareForReuse()

    }

    // MARK: - Configure
    private func configure() {

    }

    // MARK: - ConfigurableCell
    func configure(with viewModel: ViewModelType) {
        
    }

    // MARK: - Actions

    // MARK: - Private
}
