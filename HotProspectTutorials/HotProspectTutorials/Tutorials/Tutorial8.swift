//
//  Tutorial8.swift
//  HotProspectTutorials
//
//  Created by Alberto Landi Cortiñas on 7/8/22.
//

import SwiftUI
import UserNotifications

struct Tutorial8: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }
            .buttonStyle(.bordered)
            
            
            Button("Schedule Notification") {
                let content = UNMutableNotificationContent()
                content.title = "Feed the dogs"
                content.subtitle = "They look hungry"
                content.sound = UNNotificationSound.default
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            }
            .buttonStyle(.bordered)
            
        }
        .navigationBarTitle("Tutorial 8")
    }
}

struct Tutorial8_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial8()
    }
}
