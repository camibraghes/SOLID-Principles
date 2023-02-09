import Foundation

class Handler {
    
    func handle() {
        let data = requestDataToAPI()
        let array = parseResponse(data: data)
        saveToDatabase(array: array)
    }
  
    private func requestDataToAPI() -> Data {
        // Network request and wait the response
    }
    
    private func parseResponse(data: Data) -> [String] {
        // Parse the network response into array
    }
   
    private func saveToDatabase(array: [String]) {
        // Save parsed response into database
    }
}
