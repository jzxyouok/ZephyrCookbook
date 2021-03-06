//
//  TypedStoryboardSegueInfo+UIStoryboardSegue.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

extension TypedStoryboardSegueInfo {
  /**
   Returns typed information about the given segue, fails if the segue types don't exactly match types.
   
   - returns: A newly initialized TypedStoryboardSegueInfo object or nil.
  */
  public init?<SegueIdentifier: StoryboardSegueIdentifierType>(segueIdentifier: SegueIdentifier, segue: UIStoryboardSegue) where SegueIdentifier.SegueType == Segue, SegueIdentifier.SourceType == Source, SegueIdentifier.DestinationType == Destination {
    guard let identifier = segue.identifier,
      let sourceViewController = segue.source as? SegueIdentifier.SourceType,
      let destinationViewController = segue.destination as? SegueIdentifier.DestinationType,
      let segue = segue as? SegueIdentifier.SegueType
      , identifier == segueIdentifier.identifier
      else {
        return nil
    }

    self.segue = segue
    self.identifier = identifier
    self.sourceViewController = sourceViewController
    self.destinationViewController = destinationViewController
  }
}
