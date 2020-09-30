//
//  Actions.swift
//  ExampleAlert
//
//  Created by keisuke yamagishi on 2020/09/30.
//

import UIKit
import Alert

let title = "UIAlert"
let message = "Hi there👋 "

let Actions: [Alerts] = [Alerts(title: title, message: message + "single button alert", Type: .alert, action: Alerts.alertSingleActions),
                         Alerts(title: title, message: message + "double button alert", Type: .alert, action: Alerts.alertDoubleActions),
                         Alerts(title: title, message: message + "single button sheet", Type: .actionSheet, action: Alerts.sheetSingleActions),
                         Alerts(title: title, message: message + "double button sheet", Type: .actionSheet, action: Alerts.alertDoubleActions),
                         Alerts(title: title, message: message + "single button text alert", Type: .alert, action: Alerts.singleText),
                         Alerts(title: title, message: message + "double button text alert", Type: .alert, action: Alerts.loginActions)]
