import Foundation

//This principle tries to reduce the dependencies between modules, and thus achieve a lower coupling between classes.

class Car {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class SaveData {
    func save(car: Car) {
        // Save car on database
    }
}

class Service {
    func save(car: Car) {
        let save = SaveData()
        save.save(car: car)
    }
}
