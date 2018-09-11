import UIKit
import RKTableAdapter

class {{ .moduleInfo.name }}CollectionCell: UICollectionViewCell, ConfigurableCell {
    typealias ViewModelType = {{ .moduleInfo.name }}CollectionCellVM

    // MARK: - Properties
    var viewModel: ViewModelType?

    // MARK: - UI

    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
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