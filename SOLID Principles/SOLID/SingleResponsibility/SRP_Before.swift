import Foundation



class HandlerBefore {
    
    let apiHandler: APIHandler
    let parseHandler: ParseHandler
    let dataBase: DataBaseHandler
    
    init(apiHandler: APIHandler, parseHandler: ParseHandler, dataBase: DataBaseHandler) {
        self.apiHandler = apiHandler
        self.parseHandler = parseHandler
        self.dataBase = dataBase
    }
    
    func handle() {
       let data = apiHandler.requestDataToAPI()
        let array = parseHandler.parseResponse(data: data)
        dataBase.saveToDatabase(array: array)
    }
}

class APIHandler {
    func requestDataToAPI() -> Data {
    }
}

class ParseHandler {
    func parseResponse(data: Data) -> [String] {}
}

class DataBaseHandler {
    func saveToDatabase(array: [String]) {}
}
