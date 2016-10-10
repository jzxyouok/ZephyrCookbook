// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift

import Foundation
import Rswift
import UIKit

/// This `R` struct is code generated, and contains references to static resources.
struct R {
  /// This `R.color` struct is generated, and contains static references to 0 color palettes.
  struct color {
    private init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 1 files.
  struct file {
    /// Resource file `status`.
    static let status = FileResource(bundle: _R.hostingBundle, name: "status", pathExtension: "")
    
    /// `bundle.URLForResource("status", withExtension: "")`
    static func status(_: Void) -> NSURL? {
      let fileResource = R.file.status
      return fileResource.bundle.URLForResource(fileResource)
    }
    
    private init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    private init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 7 images.
  struct image {
    /// Image `bannerImage`.
    static let bannerImage = ImageResource(bundle: _R.hostingBundle, name: "bannerImage")
    /// Image `guide_step1`.
    static let guide_step1 = ImageResource(bundle: _R.hostingBundle, name: "guide_step1")
    /// Image `guide_step2`.
    static let guide_step2 = ImageResource(bundle: _R.hostingBundle, name: "guide_step2")
    /// Image `guide_step3`.
    static let guide_step3 = ImageResource(bundle: _R.hostingBundle, name: "guide_step3")
    /// Image `guide_step4`.
    static let guide_step4 = ImageResource(bundle: _R.hostingBundle, name: "guide_step4")
    /// Image `guide_step5`.
    static let guide_step5 = ImageResource(bundle: _R.hostingBundle, name: "guide_step5")
    /// Image `LaunchImage`.
    static let launchImage = ImageResource(bundle: _R.hostingBundle, name: "LaunchImage")
    
    /// `UIImage(named: "bannerImage", bundle: ..., traitCollection: ...)`
    static func bannerImage(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.bannerImage, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "guide_step1", bundle: ..., traitCollection: ...)`
    static func guide_step1(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.guide_step1, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "guide_step2", bundle: ..., traitCollection: ...)`
    static func guide_step2(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.guide_step2, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "guide_step3", bundle: ..., traitCollection: ...)`
    static func guide_step3(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.guide_step3, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "guide_step4", bundle: ..., traitCollection: ...)`
    static func guide_step4(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.guide_step4, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "guide_step5", bundle: ..., traitCollection: ...)`
    static func guide_step5(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.guide_step5, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "LaunchImage", bundle: ..., traitCollection: ...)`
    static func launchImage(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.launchImage, compatibleWithTraitCollection: traitCollection)
    }
    
    private init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    private init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `cell`.
    static let cell: ReuseIdentifier<AYCollectionViewCell> = ReuseIdentifier(identifier: "cell")
    
    private init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    private init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 3 storyboards.
  struct storyboard {
    /// Storyboard `AYNewFeature`.
    static let aYNewFeature = _R.storyboard.aYNewFeature()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "AYNewFeature", bundle: ...)`
    static func aYNewFeature(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.aYNewFeature)
    }
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.main)
    }
    
    private init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    private init() {}
  }
  
  private init() {}
}

struct _R {
  static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(NSLocale.init) ?? NSLocale.currentLocale()
  static let hostingBundle = NSBundle(identifier: "Zephyr.ZephyrCookbook") ?? NSBundle.mainBundle()
  
  struct nib {
    private init() {}
  }
  
  struct storyboard {
    struct aYNewFeature: StoryboardResourceWithInitialControllerType {
      typealias InitialController = AYNewFeatureViewController
      
      let bundle = _R.hostingBundle
      let name = "AYNewFeature"
      
      private init() {}
    }
    
    struct launchScreen: StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIViewController
      
      let bundle = _R.hostingBundle
      let name = "LaunchScreen"
      
      private init() {}
    }
    
    struct main: StoryboardResourceWithInitialControllerType {
      typealias InitialController = AYMainViewController
      
      let bundle = _R.hostingBundle
      let name = "Main"
      
      private init() {}
    }
    
    private init() {}
  }
  
  private init() {}
}