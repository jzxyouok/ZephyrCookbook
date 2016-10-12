// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift

import Foundation
import Rswift
import UIKit

/// This `R` struct is code generated, and contains references to static resources.
struct R: Rswift.Validatable {
  static func validate() throws {
    try intern.validate()
  }
  
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
  
  /// This `R.image` struct is generated, and contains static references to 68 images.
  struct image {
    /// Image `bannerImage`.
    static let bannerImage = ImageResource(bundle: _R.hostingBundle, name: "bannerImage")
    /// Image `bg_header_search`.
    static let bg_header_search = ImageResource(bundle: _R.hostingBundle, name: "bg_header_search")
    /// Image `bg_search_opacity`.
    static let bg_search_opacity = ImageResource(bundle: _R.hostingBundle, name: "bg_search_opacity")
    /// Image `btn_header_back`.
    static let btn_header_back = ImageResource(bundle: _R.hostingBundle, name: "btn_header_back")
    /// Image `btn_header_back_gray`.
    static let btn_header_back_gray = ImageResource(bundle: _R.hostingBundle, name: "btn_header_back_gray")
    /// Image `btn_header_back_white`.
    static let btn_header_back_white = ImageResource(bundle: _R.hostingBundle, name: "btn_header_back_white")
    /// Image `default_daily_first`.
    static let default_daily_first = ImageResource(bundle: _R.hostingBundle, name: "default_daily_first")
    /// Image `default_foodlike_big`.
    static let default_foodlike_big = ImageResource(bundle: _R.hostingBundle, name: "default_foodlike_big")
    /// Image `default_foodlike_small`.
    static let default_foodlike_small = ImageResource(bundle: _R.hostingBundle, name: "default_foodlike_small")
    /// Image `default_header`.
    static let default_header = ImageResource(bundle: _R.hostingBundle, name: "default_header")
    /// Image `default_new`.
    static let default_new = ImageResource(bundle: _R.hostingBundle, name: "default_new")
    /// Image `default_onehour`.
    static let default_onehour = ImageResource(bundle: _R.hostingBundle, name: "default_onehour")
    /// Image `default_p110`.
    static let default_p110 = ImageResource(bundle: _R.hostingBundle, name: "default_p110")
    /// Image `default_p118`.
    static let default_p118 = ImageResource(bundle: _R.hostingBundle, name: "default_p118")
    /// Image `default_p172`.
    static let default_p172 = ImageResource(bundle: _R.hostingBundle, name: "default_p172")
    /// Image `default_p210`.
    static let default_p210 = ImageResource(bundle: _R.hostingBundle, name: "default_p210")
    /// Image `default_p222`.
    static let default_p222 = ImageResource(bundle: _R.hostingBundle, name: "default_p222")
    /// Image `default_p280`.
    static let default_p280 = ImageResource(bundle: _R.hostingBundle, name: "default_p280")
    /// Image `default_p580`.
    static let default_p580 = ImageResource(bundle: _R.hostingBundle, name: "default_p580")
    /// Image `default_p600`.
    static let default_p600 = ImageResource(bundle: _R.hostingBundle, name: "default_p600")
    /// Image `default_p80`.
    static let default_p80 = ImageResource(bundle: _R.hostingBundle, name: "default_p80")
    /// Image `default_p85`.
    static let default_p85 = ImageResource(bundle: _R.hostingBundle, name: "default_p85")
    /// Image `default_r172-118`.
    static let default_r172118 = ImageResource(bundle: _R.hostingBundle, name: "default_r172-118")
    /// Image `default_r320x214`.
    static let default_r320x214 = ImageResource(bundle: _R.hostingBundle, name: "default_r320x214")
    /// Image `default_r580-134`.
    static let default_r580134 = ImageResource(bundle: _R.hostingBundle, name: "default_r580-134")
    /// Image `default_r580-350`.
    static let default_r580350 = ImageResource(bundle: _R.hostingBundle, name: "default_r580-350")
    /// Image `default_r640-1136`.
    static let default_r6401136 = ImageResource(bundle: _R.hostingBundle, name: "default_r640-1136")
    /// Image `default_r640-240`.
    static let default_r640240 = ImageResource(bundle: _R.hostingBundle, name: "default_r640-240")
    /// Image `default_r640-270`.
    static let default_r640270 = ImageResource(bundle: _R.hostingBundle, name: "default_r640-270")
    /// Image `default_r640-400`.
    static let default_r640400 = ImageResource(bundle: _R.hostingBundle, name: "default_r640-400")
    /// Image `default_r640-414`.
    static let default_r640414 = ImageResource(bundle: _R.hostingBundle, name: "default_r640-414")
    /// Image `default_r640-500`.
    static let default_r640500 = ImageResource(bundle: _R.hostingBundle, name: "default_r640-500")
    /// Image `default_special_price`.
    static let default_special_price = ImageResource(bundle: _R.hostingBundle, name: "default_special_price")
    /// Image `default_special_price~iphone`.
    static let default_special_priceIphone = ImageResource(bundle: _R.hostingBundle, name: "default_special_price~iphone")
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
    /// Image `homeSearch`.
    static let homeSearch = ImageResource(bundle: _R.hostingBundle, name: "homeSearch")
    /// Image `icon_index_fenlei_black`.
    static let icon_index_fenlei_black = ImageResource(bundle: _R.hostingBundle, name: "icon_index_fenlei_black")
    /// Image `LaunchImage`.
    static let launchImage = ImageResource(bundle: _R.hostingBundle, name: "LaunchImage")
    /// Image `menu_ico_center`.
    static let menu_ico_center = ImageResource(bundle: _R.hostingBundle, name: "menu_ico_center")
    /// Image `menu_ico_center_on`.
    static let menu_ico_center_on = ImageResource(bundle: _R.hostingBundle, name: "menu_ico_center_on")
    /// Image `menu_ico_find`.
    static let menu_ico_find = ImageResource(bundle: _R.hostingBundle, name: "menu_ico_find")
    /// Image `menu_ico_find_on`.
    static let menu_ico_find_on = ImageResource(bundle: _R.hostingBundle, name: "menu_ico_find_on")
    /// Image `menu_ico_gather`.
    static let menu_ico_gather = ImageResource(bundle: _R.hostingBundle, name: "menu_ico_gather")
    /// Image `menu_ico_gather_on`.
    static let menu_ico_gather_on = ImageResource(bundle: _R.hostingBundle, name: "menu_ico_gather_on")
    /// Image `menu_ico_home`.
    static let menu_ico_home = ImageResource(bundle: _R.hostingBundle, name: "menu_ico_home")
    /// Image `menu_ico_home_on`.
    static let menu_ico_home_on = ImageResource(bundle: _R.hostingBundle, name: "menu_ico_home_on")
    /// Image `menu_ico_shop`.
    static let menu_ico_shop = ImageResource(bundle: _R.hostingBundle, name: "menu_ico_shop")
    /// Image `menu_ico_shop_on`.
    static let menu_ico_shop_on = ImageResource(bundle: _R.hostingBundle, name: "menu_ico_shop_on")
    /// Image `menu_main_center`.
    static let menu_main_center = ImageResource(bundle: _R.hostingBundle, name: "menu_main_center")
    /// Image `menu_main_center_on`.
    static let menu_main_center_on = ImageResource(bundle: _R.hostingBundle, name: "menu_main_center_on")
    /// Image `menu_main_club`.
    static let menu_main_club = ImageResource(bundle: _R.hostingBundle, name: "menu_main_club")
    /// Image `menu_main_club_on`.
    static let menu_main_club_on = ImageResource(bundle: _R.hostingBundle, name: "menu_main_club_on")
    /// Image `menu_main_home`.
    static let menu_main_home = ImageResource(bundle: _R.hostingBundle, name: "menu_main_home")
    /// Image `menu_main_home_on`.
    static let menu_main_home_on = ImageResource(bundle: _R.hostingBundle, name: "menu_main_home_on")
    /// Image `menu_main_purchase`.
    static let menu_main_purchase = ImageResource(bundle: _R.hostingBundle, name: "menu_main_purchase")
    /// Image `menu_main_purchase_on`.
    static let menu_main_purchase_on = ImageResource(bundle: _R.hostingBundle, name: "menu_main_purchase_on")
    /// Image `middle1`.
    static let middle1 = ImageResource(bundle: _R.hostingBundle, name: "middle1")
    /// Image `middle2`.
    static let middle2 = ImageResource(bundle: _R.hostingBundle, name: "middle2")
    /// Image `middle3`.
    static let middle3 = ImageResource(bundle: _R.hostingBundle, name: "middle3")
    /// Image `title1`.
    static let title1 = ImageResource(bundle: _R.hostingBundle, name: "title1")
    /// Image `title2`.
    static let title2 = ImageResource(bundle: _R.hostingBundle, name: "title2")
    /// Image `title3`.
    static let title3 = ImageResource(bundle: _R.hostingBundle, name: "title3")
    /// Image `title4`.
    static let title4 = ImageResource(bundle: _R.hostingBundle, name: "title4")
    /// Image `title5`.
    static let title5 = ImageResource(bundle: _R.hostingBundle, name: "title5")
    
    /// `UIImage(named: "bannerImage", bundle: ..., traitCollection: ...)`
    static func bannerImage(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.bannerImage, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "bg_header_search", bundle: ..., traitCollection: ...)`
    static func bg_header_search(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.bg_header_search, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "bg_search_opacity", bundle: ..., traitCollection: ...)`
    static func bg_search_opacity(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.bg_search_opacity, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "btn_header_back", bundle: ..., traitCollection: ...)`
    static func btn_header_back(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.btn_header_back, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "btn_header_back_gray", bundle: ..., traitCollection: ...)`
    static func btn_header_back_gray(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.btn_header_back_gray, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "btn_header_back_white", bundle: ..., traitCollection: ...)`
    static func btn_header_back_white(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.btn_header_back_white, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_daily_first", bundle: ..., traitCollection: ...)`
    static func default_daily_first(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_daily_first, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_foodlike_big", bundle: ..., traitCollection: ...)`
    static func default_foodlike_big(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_foodlike_big, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_foodlike_small", bundle: ..., traitCollection: ...)`
    static func default_foodlike_small(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_foodlike_small, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_header", bundle: ..., traitCollection: ...)`
    static func default_header(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_header, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_new", bundle: ..., traitCollection: ...)`
    static func default_new(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_new, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_onehour", bundle: ..., traitCollection: ...)`
    static func default_onehour(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_onehour, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_p110", bundle: ..., traitCollection: ...)`
    static func default_p110(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_p110, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_p118", bundle: ..., traitCollection: ...)`
    static func default_p118(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_p118, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_p172", bundle: ..., traitCollection: ...)`
    static func default_p172(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_p172, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_p210", bundle: ..., traitCollection: ...)`
    static func default_p210(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_p210, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_p222", bundle: ..., traitCollection: ...)`
    static func default_p222(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_p222, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_p280", bundle: ..., traitCollection: ...)`
    static func default_p280(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_p280, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_p580", bundle: ..., traitCollection: ...)`
    static func default_p580(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_p580, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_p600", bundle: ..., traitCollection: ...)`
    static func default_p600(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_p600, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_p80", bundle: ..., traitCollection: ...)`
    static func default_p80(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_p80, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_p85", bundle: ..., traitCollection: ...)`
    static func default_p85(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_p85, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_r172-118", bundle: ..., traitCollection: ...)`
    static func default_r172118(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_r172118, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_r320x214", bundle: ..., traitCollection: ...)`
    static func default_r320x214(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_r320x214, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_r580-134", bundle: ..., traitCollection: ...)`
    static func default_r580134(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_r580134, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_r580-350", bundle: ..., traitCollection: ...)`
    static func default_r580350(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_r580350, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_r640-1136", bundle: ..., traitCollection: ...)`
    static func default_r6401136(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_r6401136, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_r640-240", bundle: ..., traitCollection: ...)`
    static func default_r640240(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_r640240, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_r640-270", bundle: ..., traitCollection: ...)`
    static func default_r640270(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_r640270, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_r640-400", bundle: ..., traitCollection: ...)`
    static func default_r640400(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_r640400, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_r640-414", bundle: ..., traitCollection: ...)`
    static func default_r640414(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_r640414, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_r640-500", bundle: ..., traitCollection: ...)`
    static func default_r640500(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_r640500, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_special_price", bundle: ..., traitCollection: ...)`
    static func default_special_price(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_special_price, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "default_special_price~iphone", bundle: ..., traitCollection: ...)`
    static func default_special_priceIphone(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.default_special_priceIphone, compatibleWithTraitCollection: traitCollection)
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
    
    /// `UIImage(named: "homeSearch", bundle: ..., traitCollection: ...)`
    static func homeSearch(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.homeSearch, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "icon_index_fenlei_black", bundle: ..., traitCollection: ...)`
    static func icon_index_fenlei_black(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.icon_index_fenlei_black, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "LaunchImage", bundle: ..., traitCollection: ...)`
    static func launchImage(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.launchImage, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_ico_center", bundle: ..., traitCollection: ...)`
    static func menu_ico_center(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_ico_center, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_ico_center_on", bundle: ..., traitCollection: ...)`
    static func menu_ico_center_on(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_ico_center_on, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_ico_find", bundle: ..., traitCollection: ...)`
    static func menu_ico_find(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_ico_find, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_ico_find_on", bundle: ..., traitCollection: ...)`
    static func menu_ico_find_on(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_ico_find_on, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_ico_gather", bundle: ..., traitCollection: ...)`
    static func menu_ico_gather(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_ico_gather, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_ico_gather_on", bundle: ..., traitCollection: ...)`
    static func menu_ico_gather_on(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_ico_gather_on, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_ico_home", bundle: ..., traitCollection: ...)`
    static func menu_ico_home(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_ico_home, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_ico_home_on", bundle: ..., traitCollection: ...)`
    static func menu_ico_home_on(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_ico_home_on, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_ico_shop", bundle: ..., traitCollection: ...)`
    static func menu_ico_shop(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_ico_shop, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_ico_shop_on", bundle: ..., traitCollection: ...)`
    static func menu_ico_shop_on(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_ico_shop_on, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_main_center", bundle: ..., traitCollection: ...)`
    static func menu_main_center(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_main_center, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_main_center_on", bundle: ..., traitCollection: ...)`
    static func menu_main_center_on(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_main_center_on, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_main_club", bundle: ..., traitCollection: ...)`
    static func menu_main_club(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_main_club, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_main_club_on", bundle: ..., traitCollection: ...)`
    static func menu_main_club_on(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_main_club_on, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_main_home", bundle: ..., traitCollection: ...)`
    static func menu_main_home(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_main_home, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_main_home_on", bundle: ..., traitCollection: ...)`
    static func menu_main_home_on(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_main_home_on, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_main_purchase", bundle: ..., traitCollection: ...)`
    static func menu_main_purchase(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_main_purchase, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "menu_main_purchase_on", bundle: ..., traitCollection: ...)`
    static func menu_main_purchase_on(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.menu_main_purchase_on, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "middle1", bundle: ..., traitCollection: ...)`
    static func middle1(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.middle1, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "middle2", bundle: ..., traitCollection: ...)`
    static func middle2(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.middle2, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "middle3", bundle: ..., traitCollection: ...)`
    static func middle3(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.middle3, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "title1", bundle: ..., traitCollection: ...)`
    static func title1(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.title1, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "title2", bundle: ..., traitCollection: ...)`
    static func title2(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.title2, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "title3", bundle: ..., traitCollection: ...)`
    static func title3(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.title3, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "title4", bundle: ..., traitCollection: ...)`
    static func title4(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.title4, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "title5", bundle: ..., traitCollection: ...)`
    static func title5(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.title5, compatibleWithTraitCollection: traitCollection)
    }
    
    private init() {}
  }
  
  private struct intern: Rswift.Validatable {
    static func validate() throws {
      try _R.validate()
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
  
  /// This `R.storyboard` struct is generated, and contains static references to 7 storyboards.
  struct storyboard {
    /// Storyboard `AYNewFeature`.
    static let aYNewFeature = _R.storyboard.aYNewFeature()
    /// Storyboard `DaoJia`.
    static let daoJia = _R.storyboard.daoJia()
    /// Storyboard `Discover`.
    static let discover = _R.storyboard.discover()
    /// Storyboard `Home`.
    static let home = _R.storyboard.home()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    /// Storyboard `Profile`.
    static let profile = _R.storyboard.profile()
    
    /// `UIStoryboard(name: "AYNewFeature", bundle: ...)`
    static func aYNewFeature(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.aYNewFeature)
    }
    
    /// `UIStoryboard(name: "DaoJia", bundle: ...)`
    static func daoJia(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.daoJia)
    }
    
    /// `UIStoryboard(name: "Discover", bundle: ...)`
    static func discover(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.discover)
    }
    
    /// `UIStoryboard(name: "Home", bundle: ...)`
    static func home(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.home)
    }
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.main)
    }
    
    /// `UIStoryboard(name: "Profile", bundle: ...)`
    static func profile(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.profile)
    }
    
    private init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    private init() {}
  }
  
  private init() {}
}

struct _R: Rswift.Validatable {
  static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(NSLocale.init) ?? NSLocale.currentLocale()
  static let hostingBundle = NSBundle(identifier: "Zephyr.ZephyrCookbook") ?? NSBundle.mainBundle()
  
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    private init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try daoJia.validate()
      try profile.validate()
      try discover.validate()
      try home.validate()
    }
    
    struct aYNewFeature: StoryboardResourceWithInitialControllerType {
      typealias InitialController = AYNewFeatureViewController
      
      let bundle = _R.hostingBundle
      let name = "AYNewFeature"
      
      private init() {}
    }
    
    struct daoJia: StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = AYDaoJiaViewController
      
      let bundle = _R.hostingBundle
      let name = "DaoJia"
      
      static func validate() throws {
        if UIImage(named: "menu_ico_shop_on") == nil { throw ValidationError(description: "[R.swift] Image named 'menu_ico_shop_on' is used in storyboard 'DaoJia', but couldn't be loaded.") }
        if UIImage(named: "menu_ico_shop") == nil { throw ValidationError(description: "[R.swift] Image named 'menu_ico_shop' is used in storyboard 'DaoJia', but couldn't be loaded.") }
      }
      
      private init() {}
    }
    
    struct discover: StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = AYDiscoverViewController
      
      let bundle = _R.hostingBundle
      let name = "Discover"
      
      static func validate() throws {
        if UIImage(named: "menu_ico_gather") == nil { throw ValidationError(description: "[R.swift] Image named 'menu_ico_gather' is used in storyboard 'Discover', but couldn't be loaded.") }
        if UIImage(named: "menu_ico_gather_on") == nil { throw ValidationError(description: "[R.swift] Image named 'menu_ico_gather_on' is used in storyboard 'Discover', but couldn't be loaded.") }
      }
      
      private init() {}
    }
    
    struct home: StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = AYHomeViewController
      
      let bundle = _R.hostingBundle
      let name = "Home"
      
      static func validate() throws {
        if UIImage(named: "menu_ico_home_on") == nil { throw ValidationError(description: "[R.swift] Image named 'menu_ico_home_on' is used in storyboard 'Home', but couldn't be loaded.") }
        if UIImage(named: "menu_ico_home") == nil { throw ValidationError(description: "[R.swift] Image named 'menu_ico_home' is used in storyboard 'Home', but couldn't be loaded.") }
      }
      
      private init() {}
    }
    
    struct launchScreen: StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIViewController
      
      let bundle = _R.hostingBundle
      let name = "LaunchScreen"
      
      private init() {}
    }
    
    struct main: StoryboardResourceWithInitialControllerType {
      typealias InitialController = AYNavigationController
      
      let bundle = _R.hostingBundle
      let name = "Main"
      
      private init() {}
    }
    
    struct profile: StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UITableViewController
      
      let bundle = _R.hostingBundle
      let name = "Profile"
      
      static func validate() throws {
        if UIImage(named: "menu_ico_center_on") == nil { throw ValidationError(description: "[R.swift] Image named 'menu_ico_center_on' is used in storyboard 'Profile', but couldn't be loaded.") }
        if UIImage(named: "menu_ico_center") == nil { throw ValidationError(description: "[R.swift] Image named 'menu_ico_center' is used in storyboard 'Profile', but couldn't be loaded.") }
      }
      
      private init() {}
    }
    
    private init() {}
  }
  
  private init() {}
}