import Foundation

class AppConfigFactory {
    func makeAppConfig(_ name: String) -> AppConfig {
        if let config = makeDevAppConfig(name) {
            return config
            
        } else if let config = makeProdAppConfig(name) {
            return config
            
        } else {
            fatalError()
        }
    }
    
    fileprivate func makeDevAppConfig(_ name: String) -> AppConfig? {
        switch name {
        case "dev":
            return AppConfigDev()

        default:
            return nil
        }
    }
    
    fileprivate func makeProdAppConfig(_ name: String) -> AppConfig? {
        switch name {
        case "prod":
            return AppConfigProd()

        default:
            return nil
        }
    }
}