@objc(NukeLazyMeofViewManager)
class NukeLazyMeofViewManager: RCTViewManager {

  override func view() -> (NukeLazyMeofView) {
    return NukeLazyMeofView()
  }
}

 import Nuke
 import UIKit

 class NukeLazyMeofView : UIImageView {

  @objc
   static func requiresMainQueueSetup() -> Bool {
     return true
   }

   @objc var uri: String = "" {
     didSet {
         self.clipsToBounds = true
         let options = ImageLoadingOptions(
           placeholder: UIImage(named: "placeholder"),
           transition: .fadeIn(duration: 0.33)
         )
         Nuke.loadImage(with: uri, options: options, into: self)
     }
   }
  
   @objc var resizeMode: String = "scaleAspectFill" {
     didSet {
         switch resizeMode {
           case "scaleToFill":
             self.contentMode = .scaleToFill
           case "scaleAspectFit":
             self.contentMode = .scaleAspectFit
           case "scaleAspectFill":
             self.contentMode = .scaleAspectFill
           default:
             self.contentMode = .scaleAspectFill
         }
     }
   }
 }
