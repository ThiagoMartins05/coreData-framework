//
//  ContactsSavingView.swift
//  ContactsApp
//
//  Created by Thiago Martins on 03/08/24.
//

import UIKit
import Foundation

class ContactsSavingView: UIView {
    
    private enum Constraints: CGFloat {
        case topMargin = 40
        case borderMargin = 16
        case betweenMargin = 8
        case buttonBorderRadius = 12
        case textFieldHeight = 30
    }
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Nome"
        label.font = .boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    private lazy var phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "Número de Telefone"
        label.font = .boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insira o nome do contato"
        textField.backgroundColor = .systemGray6
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var phoneTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insira o telefone do contato"
        textField.keyboardType = .numberPad
        textField.backgroundColor = .systemGray6
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Salvar Contato", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .blue
        button.layer.cornerRadius = Constraints.buttonBorderRadius.rawValue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubviews()
        addConstraints()
        turnKeyboardDismissable()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        addSubview(nameLabel)
        addSubview(nameTextField)
        addSubview(phoneNumberLabel)
        addSubview(phoneTextField)
        addSubview(saveButton)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: Constraints.topMargin.rawValue),
            nameLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: Constraints.borderMargin.rawValue),
            nameLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -Constraints.borderMargin.rawValue)
        ])
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: Constraints.betweenMargin.rawValue),
            nameTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: Constraints.borderMargin.rawValue),
            nameTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -Constraints.borderMargin.rawValue),
            nameTextField.heightAnchor.constraint(equalToConstant: Constraints.textFieldHeight.rawValue)
        ])
        
        NSLayoutConstraint.activate([
            phoneNumberLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: Constraints.betweenMargin.rawValue),
            phoneNumberLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: Constraints.borderMargin.rawValue),
            phoneNumberLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -Constraints.borderMargin.rawValue)
        ])
        
        NSLayoutConstraint.activate([
            phoneTextField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: Constraints.betweenMargin.rawValue),
            phoneTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: Constraints.borderMargin.rawValue),
            phoneTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -Constraints.borderMargin.rawValue),
            phoneTextField.heightAnchor.constraint(equalToConstant: Constraints.textFieldHeight.rawValue)
        ])
        
        NSLayoutConstraint.activate([
//            saveButton.topAnchor.constraint(greaterThanOrEqualTo: phoneTextField.bottomAnchor, constant: Constraints.betweenMargin.rawValue),
            saveButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: Constraints.borderMargin.rawValue),
            saveButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -Constraints.borderMargin.rawValue),
            saveButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -Constraints.borderMargin.rawValue),
            saveButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func turnKeyboardDismissable() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        self.addGestureRecognizer(tap)
    }
}
