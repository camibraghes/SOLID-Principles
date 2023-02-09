import Foundation

// We create a new protocol Printable which will be implemented by the classes to log.
//Finally, printData() will print an array of Printable.

protocol Printable {
    func printDetails() -> String
}

class CarAfter: Printable {
    
    let name: String
    let color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    func printDetails() -> String {
        return "I have \(self.color) color \(self.name)."
    }
}

class BikeAfter: Printable {
    let name: String
    let color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    func printDetails() -> String {
        return "I have \(self.name) bike of color \(self.color)."
    }
}

class LoggerAfter {
    func printData() {
        let vehicles: [Printable] = [CarAfter(name: "bmw", color: "red"),
                                     CarAfter(name: "opel", color: "gray"),
                                     BikeAfter(name: "bmx", color: "green")]
        vehicles.forEach { vehicle in
            print(vehicle.printDetails())
        }
    }
}
