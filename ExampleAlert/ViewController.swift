//
//  ViewController.swift
//  ExampleAlert
//
//  Created by keisuke yamagishi on 2020/09/30.
//

import Alert
import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    override func loadView() {
        super.loadView()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let textField2 = UITextField()
        textField2.textColor = .black
        textField2.keyboardType = .twitter
        textField2.isSecureTextEntry = true

        let actions = [AlertAction(textField: UITextField(), placeholder: "Name"),
                       AlertAction(textField: textField2, placeholder: "Password"),
                       AlertAction(title: "OK", type: 0, style: .default,  handler: { (_, textFields) in
                        print(textFields?.forEach { print($0.text ?? "Nothing value")} ?? [])
                       })]

        alert(title: "UIAlert", message: "Hi there!\nI'm UIAlert", actions: actions)
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        let action = Actions[indexPath.row]
        alert(title: action.title, message: action.message, actions: action.action, preferredStyle: action.Type)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return Actions.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = Actions[indexPath.row].message
        return cell
    }
}
