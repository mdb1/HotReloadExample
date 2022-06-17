//
//  HotReloadableViewController.swift
//  HotReloadExample
//
//  Created by Manu on 16/06/2022.
//

import UIKit

final class HotReloadableViewController: UIViewController {
    private let vStack: UIStackView = UIStackView()
    private let titleLabel: UILabel = UILabel()
    private let descriptionLabel: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
}

private extension HotReloadableViewController {
    enum Constants {
        static let backgroundColor: UIColor = .systemBackground
        static let vStackSpacing = 8.0
        static let vStackBackgroundColor: UIColor = .systemBackground
        static let vStackAxis: NSLayoutConstraint.Axis = .vertical
        static let vStackAlignment: UIStackView.Alignment = .center
        static let titleText = "Title"
        static let titleFont: UIFont = .systemFont(ofSize: 26, weight: .bold)
        static let titleTextColor: UIColor = .label
        static let descriptionText = "Description"
        static let descriptionFont: UIFont = .systemFont(ofSize: 12)
        static let descriptionTextColor: UIColor = .label
    }

    func setUpView() {
        view.backgroundColor = Constants.backgroundColor
        setUpVStack()
        setUpTitleLabel()
        setUpDescriptionLabel()
    }

    func setUpVStack() {
        vStack.axis = Constants.vStackAxis
        vStack.distribution = .fill
        vStack.alignment = Constants.vStackAlignment
        vStack.spacing = Constants.vStackSpacing
        vStack.backgroundColor = Constants.vStackBackgroundColor
        view.addSubview(vStack)
        vStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            vStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            vStack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    func setUpTitleLabel() {
        titleLabel.text = Constants.titleText
        titleLabel.font = Constants.titleFont
        titleLabel.textColor = Constants.titleTextColor
        vStack.addArrangedSubview(titleLabel)
    }

    func setUpDescriptionLabel() {
        descriptionLabel.text = Constants.descriptionText
        descriptionLabel.font = Constants.descriptionFont
        descriptionLabel.textColor = Constants.descriptionTextColor
        vStack.addArrangedSubview(descriptionLabel)
    }
}

