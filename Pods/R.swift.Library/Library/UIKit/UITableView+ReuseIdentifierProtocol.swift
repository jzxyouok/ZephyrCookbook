//
//  UITableView+ReuseIdentifierProtocol.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

public extension UITableView {
  /**
   Returns a typed reusable table-view cell object for the specified reuse identifier and adds it to the table.
   
   - parameter identifier: A R.reuseIdentifier.* value identifying the cell object to be reused.
   - parameter indexPath: The index path specifying the location of the cell. The data source receives this information when it is asked for the cell and should just pass it along. This method uses the index path to perform additional configuration based on the cell’s position in the table view.
   
   - returns: The UITableViewCell subclass with the associated reuse identifier or nil if it couldn't be casted correctly.
   
   - precondition: You must register a class or nib file using the registerNib: or registerClass:forCellReuseIdentifier: method before calling this method.
  */
  public func dequeueReusableCellWithIdentifier<Identifier: ReuseIdentifierType>(_ identifier: Identifier, forIndexPath indexPath: IndexPath) -> Identifier.ReusableType? where Identifier.ReusableType: UITableViewCell {
    return dequeueReusableCell(withIdentifier: identifier.identifier, for: indexPath) as? Identifier.ReusableType
  }

  /**
   Returns a typed reusable table-view cell object for the specified reuse identifier and adds it to the table.

   - parameter identifier: A R.reuseIdentifier.* value identifying the cell object to be reused.

   - returns: The UITableViewCell subclass with the associated reuse identifier or nil if it couldn't be casted correctly.

   - precondition: You must register a class or nib file using the registerNib: or registerClass:forCellReuseIdentifier: method before calling this method.
   */
  public func dequeueReusableCellWithIdentifier<Identifier: ReuseIdentifierType>(_ identifier: Identifier) -> Identifier.ReusableType? where Identifier.ReusableType: UITableViewCell {
    return dequeueReusableCell(withIdentifier: identifier.identifier) as? Identifier.ReusableType
  }

  /**
   Returns a typed reusable header or footer view located by its identifier.
   
   - parameter identifier: A R.reuseIdentifier.* value identifying the header or footer view to be reused.
   
   - returns: A UITableViewHeaderFooterView object with the associated identifier or nil if no such object exists in the reusable view queue or if it couldn't be cast correctly.
   */
  public func dequeueReusableHeaderFooterViewWithIdentifier<Identifier: ReuseIdentifierType>(_ identifier: Identifier) -> Identifier.ReusableType? where Identifier.ReusableType: UITableViewHeaderFooterView {
    return dequeueReusableHeaderFooterView(withIdentifier: identifier.identifier) as? Identifier.ReusableType
  }

  /**
   Register an array of R.nib.*, each containing a cell, with the table view under it's contained identifier.

   - parameter nibResources: Array of nib resources (R.nib.*) each containing a table view cell that has a reuse identifier
   */
  public func registerNibs<Resource: NibResourceType>(_ nibResources: [Resource]) where Resource: ReuseIdentifierType, Resource.ReusableType: UITableViewCell {
    nibResources.forEach(registerNib)
  }

  /**
   Register a R.nib.* containing a cell with the table view under it's contained identifier.
   
   - parameter nibResource: A nib resource (R.nib.*) containing a table view cell that has a reuse identifier
  */
  public func registerNib<Resource: NibResourceType>(_ nibResource: Resource) where Resource: ReuseIdentifierType, Resource.ReusableType: UITableViewCell {
    register(UINib(resource: nibResource), forCellReuseIdentifier: nibResource.identifier)
  }

  /**
   Register a R.nib.* containing a header or footer with the table view under it's contained identifier.

   - parameter nibResource: A nib resource (R.nib.*) containing a view that has a reuse identifier
   */
  public func registerNibForHeaderFooterView<Resource: NibResourceType>(_ nibResource: Resource) where Resource: ReuseIdentifierType, Resource.ReusableType: UIView {
    register(UINib(resource: nibResource), forHeaderFooterViewReuseIdentifier: nibResource.identifier)
  }
}
