//
//  AlertActions.swift
//  ExampleAlert
//
//  Created by keisuke yamagishi on 2020/09/30.
//

import Alert
import UIKit

struct Alerts {
    
    let title: String
    let message: String
    let `Type`: UIAlertController.Style
    let action: [AlertAction]
    
    static let passwordText: UITextField = {
        let textField2 = UITextField()
        textField2.textColor = .black
        textField2.keyboardType = .twitter
        textField2.isSecureTextEntry = true
        return textField2
    }()

    static let loginActions = [
        AlertAction(textField: UITextField(), placeholder: "Name"),
        AlertAction(textField: passwordText, placeholder: "Password"),
        AlertAction(title: "OK", type: 0, style: .default, handler: { (_, textFields) in
            textFields?.forEach { print($0.text ?? "Noting value") }
        }),
    ]

    static let singleText = [
        AlertAction(textField: UITextField(), placeholder: "Name"),
        AlertAction(title: "OK", type: 0, style: .default, handler: { (_, textFields) in
            textFields?.forEach { print($0.text ?? "Noting value") }
        }),
    ]

    static let alertSingleActions = [AlertAction(title: "OK", handler: { alertAction, _ in
        print(alertAction.title ?? "")
    })]

    static let alertDoubleActions = [AlertAction(title: "OK", handler: { alertAction, _ in
        print(alertAction.title ?? "Noting value")
    }), AlertAction(title: "Cancel", type: 1, style: .destructive, handler: { alertActions, _ in
        print(alertActions.title ?? "Noting value")
    })]

    static let sheetSingleActions = [AlertAction(title: "OK", type: 1, style: .default, handler: { actions, _ in
        print(actions.title ?? "Noting value")
    })]

    static let sheetDoubleActions = [AlertAction(title: "OK", type: 1, style: .default, handler: { _, _ in

    }),
    AlertAction(title: "Cancel", type: 2, style: .destructive, handler: { actions, _ in
        print(actions.title ?? "Noting value")
    })]
}
