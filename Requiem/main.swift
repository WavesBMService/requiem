//
//  main.swift
//  Requiem
//
//  Created by Martin Kim Dung-Pham on 07.02.18.
//  Copyright © 2018 elbedev.com. All rights reserved.
//

import Foundation

let notification = NSUserNotification()
notification.title = "Test"
notification.subtitle = "This is a test."
notification.deliveryDate = Date(timeIntervalSinceNow: 2)

NSUserNotificationCenter.default.scheduleNotification(notification)

print(NSUserNotificationCenter.default.scheduledNotifications)
print("\(notification.deliveryDate)")
print("\(notification.actualDeliveryDate)")
print(notification.isPresented)



