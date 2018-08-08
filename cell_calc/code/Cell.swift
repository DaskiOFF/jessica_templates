import UIKit
import RKTableAdapter

class {{ .moduleInfo.name }}Cell: UITableViewCell, ConfigurableCell {
    typealias ViewModelType = {{ .moduleInfo.name }}CellVM

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

    func updateFrames() {

    }

    // MARK: - Configure
    private func configure() {

    }

    // MARK: - ConfigurableCell
    func configure(with viewModel: ViewModelType) {
    }

    // MARK: - Actions

    // MARK: - Private
    override func layoutSubviews() {
        super.layoutSubviews()
        viewModel?.width = bounds.width

        updateFrames()
    }
}
