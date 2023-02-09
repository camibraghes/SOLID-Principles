import Foundation


//A subclass should be able to override the parent class method in a way that doesn’t break
//the functionality of the base class.The benefit of this principle is that when code is interchangeable, it becomes more reusable.

struct Costumer {
    var name: String = "ion"
    var phone: String = "07..."
    var isRepairCar: Bool = true
}

class CarService {
    func contact(costumer: Costumer) {
        // contact the costumer
    }
}

class ValidRepareCar {
    func  contact(costumer: Costumer) {
        guard costumer.isRepairCar else { return }
        self.contact(costumer: Costumer(name: costumer.name, phone: costumer.phone, isRepairCar: costumer.isRepairCar))
    }
}

// In this case, the Liskov substitution principle is not fulfilled, since the subclass adds a condition(isRepairCar).
// We can solve this problem by not creating the subclass, and adding the precondition to CarService (including a default value)
