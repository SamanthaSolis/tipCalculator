//
//  LogoView.swift
//  tip-calculator
//
//  Created by Samantha Michelle Solis on 3/4/24.
//

import UIKit

class LogoView: UIView {
    
    private var imageView: UIImageView {
        let view = UIImageView(image: .init(named: "icCalculatorBW"))
        view.contentMode = .scaleAspectFit
        return view
    }
    
    private let topLabel: UILabel = {
        let label = UILabel()
        let text = NSMutableAttributedString(string: "Mr TIP", attributes: [.font: ThemeFont.demibold(ofSize: 16.0)])
        text.addAttributes([.font: ThemeFont.bold(ofSize: 24.0)], range: NSMakeRange(3, 3))
        label.attributedText = text
        return label
    }()
    
    private let bottomLabel: UILabel = {
        LabelFactory.build(text: "Calculator", font: ThemeFont.demibold(ofSize: 20.0), TextAlignment: .left)
    }()
    
    private lazy var vStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [
        topLabel,
        bottomLabel])
        print(topLabel.bounds)
        print(bottomLabel.bounds)
        view.axis = .vertical
        view.spacing = -4
        return view
    }()
    
    private lazy var hStackView: UIStackView = {
       let view = UIStackView(arrangedSubviews: [
        imageView,
        vStackView,
       ])
        view.axis = .horizontal
        view.spacing = 8
        view.alignment = .center
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        addSubview(hStackView)
        hStackView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        imageView.snp.makeConstraints { make in
            make.height.equalTo(imageView.snp.width)
        
        }
    }
    
}
