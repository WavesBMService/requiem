//
//  main.swift
//  Requiem
//
//  Created by Martin Kim Dung-Pham on 07.02.18.
//  Copyright © 2018 elbedev.com. All rights reserved.
//

import Foundation

let arguments = CommandLine.arguments

let notification = NSUserNotification()

let title = arguments[1].components(separatedBy: "=")[1]
notification.title = title

let subtitle = arguments[2].components(separatedBy: "=")[1]
notification.subtitle = subtitle
notification.deliveryDate = Date(timeIntervalSinceNow: 2)

NSUserNotificationCenter.default.scheduleNotification(notification)

// Without this, no notification will be triggered 🤷🏻‍♂️
let _ = NSUserNotificationCenter.default.scheduledNotifications
