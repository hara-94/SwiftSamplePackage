import UIKit

public struct SamplePackage {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

public class SamplePackageButton: UIButton {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder: NSCoder) {
        fatalError()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = self.bounds.width/2
    }
    
    private func setupUI() {
        backgroundColor = .init(red: 194/255, green: 230/255, blue: 255/255, alpha: 1)
        titleLabel?.font = .boldSystemFont(ofSize: 18)
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 2
    }
    
    public func render(_ title: String?) {
        self.setTitle(title, for: .normal)
    }
}
