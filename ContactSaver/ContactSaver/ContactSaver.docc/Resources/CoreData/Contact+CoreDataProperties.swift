//
//  Contact+CoreDataProperties.swift
//  ContactSaver
//
//  Created by Thiago Martins on 03/08/24.
//
//

import Foundation
import CoreData


extension Contact {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Contact> {
        return NSFetchRequest<Contact>(entityName: "Contact")
    }

    @NSManaged public var info: ContactInfo?

}

extension Contact : Identifiable {}
