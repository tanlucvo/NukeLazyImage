@objc(NukeLazyMeofViewManager)
class NukeLazyMeofViewManager: RCTViewManager {

  override func view() -> (NukeLazyMeofView) {
    return NukeLazyMeofView()
  }
}

import Nuke
import UIKit

class NukeLazyMeofView : UIImageView {

  @objc var uri: String = "" {
    didSet {
        self.clipsToBounds = true
        Nuke.loadImage(with: uri, into: self)
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
