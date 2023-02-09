import Foundation
import UIKit

protocol Storable { }
protocol StorageManager {

  func save(object: Storable)
}

class CarAfter: Storable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class ServiceAfter: StorageManager {
    func save(object: Storable) {
        // Saves user to database
    }
}
