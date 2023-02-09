import Foundation

protocol FuelType {
    func fuel()
}

protocol Speed{
    func speed()
}

class CarAfter: FuelType, Speed {
    var topSpeed: Int = 180
    var fuelType: String = "gas"

    func speed() {
        print("the speed is \(topSpeed)")
    }

    func fuel() {
        print("the fuel is gas")
    }
}

class BikeAfter: Speed {
    func speed() {
        fatalError("fuel does not exist")
    }
}
