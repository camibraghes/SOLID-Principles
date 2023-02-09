import Foundation

class CarServiceAfter {
    func contact(costumer: Costumer) {
        guard costumer.isRepairCar else { return }
        self.contact(costumer: Costumer(name: costumer.name, phone: costumer.phone, isRepairCar: costumer.isRepairCar))
    }
}
