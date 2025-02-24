//
//  TipInputView.swift
//  tip-calculator
//
//  Created by Samantha Michelle Solis on 3/4/24.
//

import UIKit

class TipInputView: UIView {
    
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        backgroundColor = .systemPink
    }
    
}

