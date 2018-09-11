# New App Template

## Pull
`jessica generator pull github.com/daskioff/jessica_templates newapp`

## Usage
`jessica generator gen newapp`

## Generated
1. Application/Config/
    - AppConfig.swift
    - AppConfigDev.swift
    - AppConfigProd.swift
    - AppConfigFactory.swift
1. Presentation/Flows/
    - App/AppCoordinator.swift
    - Main/MainFlow.swift
1. Presentation/ViewControllers/MainVC.swift

## Dependencies
`pod RKCoordinator, '~> 0.1'`

## Additional Code

#### Update AppDelegate.swift
```swift
var window: UIWindow?
var appCoordinator: AppCoordinator!

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.makeKeyAndVisible()

    appCoordinator = AppCoordinator(window: window!)
    appCoordinator.start()

    return true
}
```
