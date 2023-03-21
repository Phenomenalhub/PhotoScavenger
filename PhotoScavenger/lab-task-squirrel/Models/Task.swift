//
//  Task.swift
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite waterfall spot",
                 description: "Where do yo go for relaxation?"),
            Task(title: "Your favorite City",
                 description: "What is your go to city for vacation?"),
            Task(title: "Your favorite outdoor park",
                 description: "If you like to relax or face your fears")
        ]
    }
}
