# Alert

[![](https://img.shields.io/badge/HP-shichimitoucarashi-00acee)](https://shichimitoucarashi.com/)
[![](https://img.shields.io/badge/Lang-Swift-ff69b4)](https://developer.apple.com/jp/swift/)
[![](https://img.shields.io/badge/LICENCE-MIT-orange)](https://github.com/keisukeYamagishi/HttpRequest/blob/master/LICENSE)

## Overview

Alert is a simple way to call UIAlertController.

## Usage

***Via SSH***: For those who plan on regularly making direct commits, cloning over SSH may provide a better experience (which requires uploading SSH keys to GitHub):

```
$ git clone git@github.com:keisukeYamagishi/Alert.git
```
***Via https***: For those checking out sources as read-only, HTTPS works best:

```
$ git clone https://github.com/keisukeYamagishi/Alert.git
```

## Sample code

```
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
```
