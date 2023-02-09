import Foundation

//In summary, Clients should not be forced to depend upon interfaces that they do not use.
//No code should be forced to depend on methods it does not use.

protocol Transportation {
    func speed()
    func fuel()
}

class Car: Transportation {
    var topSpeed: Int = 180
    var fuelType: String = "gas"
    
    func speed() {
        print("the speed is \(topSpeed)")
    }

    func fuel() {
        print("the fuel is gas")
    }
}

class Bike: Transportation {
    var topSpeed: Int = 18

    func speed() {
        print("the speed is \(topSpeed)")
    }
    
    func fuel() {
        fatalError("fuel does not exist")
    }
}

//The problem starts here because Transportation protocol has two functions, one is speed and one is fuel, there is no problem for the speed function, the fuel function causes an unnecessary responsibility to be passed to the class. This is an ISP break.
